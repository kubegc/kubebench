# kube-bench
benchmaking

# tpcw

## 负载生成实例

1. db.yaml: mariadb:10.6.4数据库，采用deployment方式部署，可以直接启动一个pod运行实例和对应的服务入口；
2. DBGen.yaml: mariadb的数据生成容器，采用job方式部署（运行一次停止），会向数据库中写入图书商店等的十数万条数据；
3. Web.yaml：读写数据库的前端网页，能够通过域名的形式访问数据库中的数据CRUD服务；
4. loadGen.yaml: 按照一定负载对web进行压测，默认设置是10个用户同时访问，每个用户每秒发起1000次请求，这部分内容可以修改；

## 测试方法

1. install.sh安装上述必要的yaml文件（可能需要自己手动添加tpcw数据库）；
2. start.sh启动负载测试；
3. stop.sh停止并删除负载测试，如果运行未完成，可能会导致无测试结果
4. 如果正常结束，在/var/lib/doslab/tpcw-test文件夹下会生成.m和.csv文件，分别对应每次负载压测的具体信息，和统计后的平均信息（在华为云3台服务器，8核16G，千兆带宽连接的kubernetes平台上信息如下）：

AvgWips=139.74854288093255
AvgHeapMemoryUsage=0.27782744616270066
AvgNonHeapMemoryUsage=-1.4520081032533333E9
AvgCPUUsage=1.799013881354363

## script location

```
/root/kube-bench/install.sh
/root/kube-bench/start.sh
/root/kube-bench/stop.sh
```


