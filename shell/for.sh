#!/usr/bin/env bash

cloud_services=(AWS Azure GCP AlibabaCloud)

# 从第二个元素开始遍历（index 从 1 开始）
echo "使用 for…in，从数组第二个开始输出："
for service in "${cloud_services[@]:1}"
do
  echo "  值为: $service"
done