# 使用官方 node.js 镜像作为基础
FROM node:16-alpine

# 在容器内创建应用目录
RUN mkdir -p /app

# 设置工作目录
WORKDIR /app
COPY package.json ./
RUN npm install
# 安装应用依赖
#COPY package*.json ./
#RUN npm install --production

# 将本地应用代码复制到容器内
COPY server/ ./

# 对外暴露 3200 端口
EXPOSE 3200

# 运行命令
CMD [ "node", "index.js" ]
