## 概述

这只是后端server，还要配置前端。

## 修改配置

修改 `server\config\index.js` 中的邮箱配置

修改`docker-compose` 文件中的数据库配置信息

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

## 反代

自行反代后端即可

```bash
ip:8001
172.17.0.1:8001
```

