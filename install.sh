#!/bin/bash

set -e

# 镜像地址
IMAGE_TAG=registry.cn-hangzhou.aliyuncs.com/xiaocheng2014/lazyvim:base-image

# 判断是否安装了 docker
if ! command -v docker >/dev/null 2>&1; then
  echo "请先安装 Docker"
  exit 1
fi

# 下载 Docker 镜像
docker pull "${IMAGE_TAG}"

# 下载命令脚本到/usr/local/bin/
curl 'https://raw.githubusercontent.com/xiaocheng2014/lazyvim-for-docker/refs/heads/main/bin/lazyvim' -o /usr/local/bin/lazyvim

# 赋可执行权限
chmod +x /usr/local/bin/lazyvim

echo "successfully installed lazyvim command to /usr/local/bin/lazyvim"
