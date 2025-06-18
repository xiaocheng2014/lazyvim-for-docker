#!/bin/bash

set -e

rm -f /usr/local/bin/lazyvim || true

IMAGE_PATH="registry.cn-hangzhou.aliyuncs.com/xiaocheng2014/lazyvim:base-image"

docker rmi "${IMAGE_PATH}" || true

echo "Successfully uninstalled lazyvim command and removed Docker image"
