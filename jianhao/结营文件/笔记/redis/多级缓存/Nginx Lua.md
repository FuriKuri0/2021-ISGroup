## OpenResty

OpenResty是一个基于Nignx的高性能Web平台

### 特点：

1. 具备Nginx的完整功能
2. 基于Lua语言进行拓展，集成了大量精良的Lua库、第三方模块
3. 允许使用Lua自定义业务逻辑、自定义库



## 使用步骤 ：

1.安装OpenResty

2.进入在OpenResty中nginx下的conf，在http下添加对OpenResty的Lua模块的加载

```
#加载Lua 模块
lua_package_cpath "/usr/local/openresty/lualib/?.lua;;";
#加载c模块
lua_package_cpath "/usr/local/openresty/lualib/?.so;;"
```

在server下，添加对接口的监听

```
location /api/item	{
	#响应类型
	default_type application/json;
	#响应信息由 xxx 处获取
	content_by_lua_file lua/item.lua
}
```



## OpenResty获取参数

![image-20220805202557947](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/image-20220805202557947.png)



## OpenResty封装http请求，获取得到tomcat数据后进行缓存

设计思想——反向代理的方式

可以把http请求封装成一个函数，放在OpenResty函数库中，以便日后方便使用

在/usr/local/openresty/lualib目录下创建common.lua文件：

```lua
local function read_http(path,params)
    -- 捕获请求
    local resp = ngx.location.capture(path,{
            method = ngx.HTTP_GET,
            args = params,
        })
    if not resp then
        -- 记录错误信息，返回404
        ngx.log(ngx.ERR,"http not found ,path:" , path,", arg: ",args)
        ngx.exit(404)
        end
    	return resp.body
end
-- 将方法导出
local _M = {
    read_http = read_http
}
return _M
```

## 流程

## ![image-20220805214740015](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/image-20220805214740015.png)