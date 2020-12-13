[toc]

# 生成带目录的html[^ 2020年12月13日15:30:31]

安装命令

```
npm install -g i5ting_toc
```

执行命令生成html

```
i5ting_toc -f mydocument.md -o
```

# md文档教程[^2020年12月13日15:32:01] 

地址：<https://mp.weixin.qq.com/s?__biz=Mzg4ODIwNzczNg==&mid=100000247&idx=1&sn=921abfe73871a96ff265b7e961a4b49b&chksm=4fffe1e0788868f625323357e4a80a1d6bc068adcde12b2a0a282077e3a41cfc1374c33a9f97#rd>

## 图片

<img src="https://upload-images.jianshu.io/upload_images/6064177-dc67c5af7ab11bef.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240" alt="哈士奇" style="zoom:30%;" />

## 字体

<font color="red">**颜色改变的字**</font>

<font size="2">**颜色改变的紫铜**</font>

<font face="楷体">**颜色改变的紫铜**</font>

# go xorm生成model文件[^2020年12月13日]

在命令行执行命令

``` bash
go get github.com/go-xorm/cmd/xorm
go get github.com/go-xorm/xorm
```

到GOPATH\src\github.com\go-xorm\cmd\xorm 目录下，执行

``` 
go build
```

从mysql总生成文件

```
xorm reverse mysql root:123456@"tcp(localhost:3306)"/seaman?charset=utf8 templates/goxorm
```



# LINUX中查看端口是否占用

``` bash
netstat  -anp  |grep   3306
```

查看有端口使用情况

``` bash
netstat   -nultp
```

查看某个端口使用情况

``` bash
netstat  -anp  |grep  82
```

# 连接数据库并授权

root用户登录数据库(回车之后需要输入密码)

``` bash
mysql -uroot -p
```

登录成功之后，插入用户

``` bash
# 向本地插入用户名为smartbi2 密码为Admin@123的用户
insert into mysql.user(Host,User,Password) values('localhost','smartbi2',password('Admin@123'));
```

向新用户授权所有的权限

``` bash
# *.*表示所有数据库
grant all privileges on *.* to 'smartbi2'@'%' identified by 'Admin@123' with grant option;
```

