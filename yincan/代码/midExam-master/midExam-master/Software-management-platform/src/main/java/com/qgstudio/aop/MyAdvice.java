package com.qgstudio.aop;

import com.qgstudio.constant.regex;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.*;
import com.qgstudio.exception.BusinessException;
import com.qgstudio.po.*;
import com.qgstudio.util.Md5Utils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.regex.Pattern;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-24 19:10
 **/
@Component
@Aspect
public class MyAdvice {

    @Autowired
    private UserDao userDao;
    @Autowired
    SoftwareDao softwareDao;
    @Autowired
    VersionDao versionDao;

    @Autowired
    HardInfoDao hardInfoDao;

    @Autowired
    CodeDao codeDao;

    //遗憾的是没法把业务层全合在一起

    /**
     * 匹配用户业务层的注册和更新方法
     */
    @Pointcut("execution(* com.qgstudio.service.UserService.register(*)) || execution(* com.qgstudio.service.UserService.update(*))")
    private  void userServicePt(){}
    /**
     * 检查注册和更新输入的数据是否与已有数据冲突/重复
     * @param pjp 切入点方法的参数集
     * @return
     * @throws Throwable
     */
    @Around("userServicePt()")
    public Result checkUserRepeat(ProceedingJoinPoint pjp) throws Throwable {
        //获取切入点方法的参数
        User user = (User) pjp.getArgs()[0];

        //1.注册用户,用户会输入用户名,密码,手机号,邮箱,首先先判断用户名,手机,邮箱是否重复,
        User userByName = userDao.getByUsername(user.getUsername());
        User userByPhone = userDao.getByPhone_number(user.getPhone_number());
        User userByEmail = userDao.getByEmail(user.getEmail());

        //1.1用户名重复
        if (userByName != null) {
            return new Result<>(ResultEnum.USER_NAME_ERR.getCode(), ResultEnum.USER_NAME_ERR.getMsg(), null);
        }
        //1.2 手机号已经被注册
        if (userByPhone != null) {
            return new Result<>(ResultEnum.USER_PHONE_ERR.getCode(), ResultEnum.USER_PHONE_ERR.getMsg(), null);
        }
        //1.3 邮箱已经被注册
        if (userByEmail != null) {
            return new Result<>(ResultEnum.USER_EMAIL_ERR.getCode(), ResultEnum.USER_EMAIL_ERR.getMsg(), null);
        }

        //注册特有
        if (pjp.getSignature().getName().equals("register")) {
            //2.判断密码是否合法
            if (!Pattern.matches(regex.REGEX_PWD, user.getPassword())) {
                throw new BusinessException(ResultEnum.EX_PWD.getCode(), ResultEnum.EX_PWD.getMsg());
            }
            //3.到这里表示可以注册,记住密码需要加密
            user.setPassword(Md5Utils.getMD5(user.getPassword()));
        }

        return (Result) pjp.proceed();
    }

    /**
     * 匹配软件业务层的添加和更新方法
     */
    @Pointcut("execution(* com.qgstudio.service.SoftwareService.add(*,*)) || execution(* com.qgstudio.service.SoftwareService.update(*))")
    private  void softwareServicePt(){}
    /**
     * 检查数据是否与已有数据冲突/重复
     * @param pjp 切入点方法的参数集
     * @return
     * @throws Throwable
     */
    @Around("softwareServicePt()")
    public Result checkSoftwareRepeat(ProceedingJoinPoint pjp) throws Throwable {
        //获取切入点方法的参数
        Software software = (Software) pjp.getArgs()[0];

        //实际上精确查询最多只有一个元素
        List<Software> softwareList = softwareDao.getBySoftware_name(software.getSoftware_name());
        //软件名是否重复
        if (!softwareList.isEmpty()) {
            return new Result<>(ResultEnum.SOFTWARE_NAME_ERR.getCode(), ResultEnum.SOFTWARE_NAME_ERR.getMsg(), null);
        }

        return (Result) pjp.proceed();
    }

    /**
     * 匹配版本业务层的添加和更新方法
     */
    @Pointcut("execution(* com.qgstudio.service.VersionService.add(*)) || execution(* com.qgstudio.service.VersionService.update(*))")
    private void versionServicePt() {
    }

    /**
     * 检查数据是否与已有数据冲突/重复
     * @param pjp 切入点方法的参数集
     * @return
     * @throws Throwable
     */
    @Around("versionServicePt()")
    public Result checkVersionRepeat(ProceedingJoinPoint pjp) throws Throwable {
        //获取切入点方法的参数
        Version version = (Version) pjp.getArgs()[0];
        //添加时没有version_id,更新时没有software_id
        if (pjp.getSignature().getName().equals("update")) {
            version.setSoftware_id(versionDao.getById(version.getVersion_id()).getSoftware_id());
        }
        Version versionByName = versionDao.getByVersionInf(version.getSoftware_id(), version.getVersionInf());

        //版本号重复
        if (versionByName != null) {
            return new Result(ResultEnum.VERSION_INF_ERR.getCode(), ResultEnum.VERSION_INF_ERR.getMsg(), null);
        }

        return (Result) pjp.proceed();
    }


    /**
     * 硬件信息层
     */
    @Pointcut("execution(* com.qgstudio.service.HardInfoService.saveHardInfo(*)) || execution(* com.qgstudio.service.HardInfoService.update(*))")
    private void hardInfoServicePt() {
    }
    @Around("hardInfoServicePt()")
    public Result checkHardInfoRepeat(ProceedingJoinPoint pjp) throws Throwable {
        //获取切入点方法的参数
        HardInfo hardInfo = (HardInfo) pjp.getArgs()[0];

        //1.新增硬件信息,需要判断信息是否重复.
        HardInfo name = hardInfoDao.getByOwnerName(hardInfo);
        HardInfo mac = hardInfoDao.getByMac(hardInfo);
        HardInfo cpu = hardInfoDao.getByCpu(hardInfo);
        HardInfo hard = hardInfoDao.getByHard(hardInfo);

        //1.1机主名重复
        if (name != null && name.getInfo_id() != hardInfo.getInfo_id()) {
            return new Result<>(ResultEnum.HARD_SAVE_NAME_REPEAT_ERR.getCode(), ResultEnum.HARD_SAVE_NAME_REPEAT_ERR.getMsg(), null);
        }
        //1.2 mac重复
        if (mac != null && mac.getInfo_id()!= hardInfo.getInfo_id()) {
            return new Result<>(ResultEnum.HARD_SAVE_MAC_REPEAT_ERR.getCode(), ResultEnum.HARD_SAVE_MAC_REPEAT_ERR.getMsg(), null);
        }
        //1.3 cpu重复
        if (cpu != null && cpu.getInfo_id() != hardInfo.getInfo_id()) {
            return new Result<>(ResultEnum.HARD_SAVE_CPU_REPEAT_ERR.getCode(), ResultEnum.HARD_SAVE_CPU_REPEAT_ERR.getMsg(), null);
        }

        //1.4 硬盘信息重复
        if (hard != null && hard.getInfo_id() != hardInfo.getInfo_id()){
            return new Result<>(ResultEnum.HARD_SAVE_HARD_REPEAT_ERR.getCode(), ResultEnum.HARD_SAVE_HARD_REPEAT_ERR.getMsg(), null);
        }

        //更新持有,需要判断是否已经被绑定授权码,如果被绑定了,则无法进行修改.
        if (pjp.getSignature().getName().equals("update")) {
            List<Code> byUserIdAndInfoId = codeDao.getByUserIdAndInfoId(hardInfo);
            if (byUserIdAndInfoId.size() != 0) {
                return new Result<>(ResultEnum.HARD_UPDATE_USED_ERR.getCode(), ResultEnum.HARD_UPDATE_USED_ERR.getMsg(), null);
            }
        }

        return (Result) pjp.proceed();
    }

}
