#!/bin/bash

set -e

rm -f /usr/local/bin/lazyvim

docker rmi registry.cn-hangzhou.aliyuncs.com/xiaocheng2014/lazyvim:base-image

echo "Successfully uninstalled lazyvim command and removed Docker image"
