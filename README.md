## 概述

这只是后端server，还要配置前端。

## 修改配置

修改 `server\config\index.js` 中的邮箱配置，还要修改的是mysql的账户密码。

修改`docker-compose` 文件中的数据库配置信息，主要是下面3行，这里要和上文的mysql账户密码一致。

```bash
- MYSQL_DATABASE=chatgpt
- MYSQL_USER=chatgpt
- MYSQL_PASSWORD=chatgpt
```

## 运行

克隆项目

```bash
git clone https://github.com/rita-iot/chatgpt.git
cd chatgpt
```

运行

```bash
# 编译
docker compose build
# 后台运行
docker compose up -d
# 删除容器
docker compose down
```

## 启动成功

```bash
docker logs mapp
#显示如下即为运行成功
#MySQL database connection succeeded.
```

## 导入数据库

ip:8001打开phpmyadmin，输入配置好的数据库名和密码

```bash
ip:8001
```

## 使用

```bash
ip
```

打开ip，注册账号使用即可。