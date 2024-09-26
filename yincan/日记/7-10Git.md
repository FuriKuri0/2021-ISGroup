GIt

# Git介绍

Git 是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。

# GIt操作

## 初始化本地库

```git
git init	
```

![image-20220710091854985](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100919092.png)

## 查看本地库状态

```git
git status
```

![image-20220710091932053](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100919097.png)

![image-20220710092011176](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100920222.png)

## 添加暂存区

```git
git add 文件名
```

![image-20220710092055266](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100920294.png)

## 提交本地库

```git 
git commit -m"message" 文件名
git reflog -- 查看引用日志信息
git log -- 查看详细日志信息
```

![image-20220710092145979](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100921003.png)

![image-20220710092202920](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100922941.png)

![image-20220710092254006](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100922033.png)

## 版本穿梭

```git 
git reset --hard 版本号
```

![image-20220710093350979](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100933014.png)

==回退版本后需要强制推送==

```git
git push --force 别名 分支
```



# Git分支

## 分支操作

```git
git branch 分支名  -- 创建分支
git branch -v -- 查看分支
git checkout 分支名  -- 切换分支
git merge 分支名 -- 把指定的分支合并到当前分支上
git branch -m oldName newName -- 修改分支名,把master改为main
```

![image-20220710094922734](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100949777.png)

![image-20220710095123124](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207100951159.png)

## 分支合并

### 正常合并

> 当前分支未被修改,需合并分支修改,所以两个分支没有产生冲突

![image-20220710100057576](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101000608.png)

### 冲突合并

> 两个分支,同个文件,同时修改,产生冲突

![image-20220710102512283](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101025324.png)

![image-20220710102610819](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101026859.png)

![image-20220710102913234](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101029268.png)

![image-20220710103032240](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101030269.png)

> 然后添加提交(提交不能带文件名)就行了,

![image-20220710103435103](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101034143.png)

==发生冲突后,分支操作时记得先pull下来==

因为主分支已经选择了需要的代码,而副分支依旧是旧代码,没有pull就直接操作,下次合并又会发生冲突.

# GIt_GIthub



## 创建远程库&创建别名

```git
git  remote -v -- 查看远程库别名
git remote add 别名 远程库链接
```



![image-20220710143431893](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207101434937.png)

## 推送本地库到远程库

```git
git push 别名 分支名
```

## 拉取远程库到本地库

```git
git pull 别名 分支名
```

## 克隆远程库到本地

```git
git clone 仓库链接
```

## 团队协作与跨团队协作

新建仓库-邀请





