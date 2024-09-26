## 部署方法

### 数据库

将qg_final.sql导入数据库,自行添加数据,以null记录表示时间段的分割

### 服务端

直接执行jar文件

` java -jar qg_final_algorithmVisualization.jar`

Linux下可以将日志输出到文件

`nohup java -jar qg_final_algorithmVisualization.jar >out.txt &`

端口:32618