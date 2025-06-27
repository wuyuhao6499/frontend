#!/usr/bin/env bash
# 文件：01var_exercise.sh
# 功能：练习声明并引用变量

# 1. 声明并引用字符串类型变量
company_name="dp-dev-wyh"
echo "company_name 变量的值是：$company_name"

# 使用变量创建一个同名文件夹
mkdir -p "$company_name"
echo "已创建文件夹：$company_name"


# 修改变量后再引用
company_name="dp-dev-wyh2"
echo "修改后 company_name 变量的值是：$company_name"

echo "-------------------------------"

# 2. 声明并引用整数类型变量（使用 declare -i）
declare -i score=100
echo "score 变量（整数类型）的值是：$score"

# 更新整数变量再引用
score=150
echo "修改后 score 的值是：$score"

echo "-------------------------------"

# 3. 声明并引用数组（云服务示例）
cloud_services=("AWS" "Azure" "GCP" "AlibabaCloud")
echo "cloud_services 数组第 1 个元素：${cloud_services[0]}"
echo "cloud_services 数组第 2 个元素：${cloud_services[1]}"
echo "cloud_services 数组第 3 个元素：${cloud_services[2]}"
echo "cloud_services 数组第 4 个元素：${cloud_services[3]}"
echo "cloud_services 数组的总长度：${#cloud_services[@]}"

echo "-------------------------------"

# 4. 声明并引用关联数组（站点示例）
declare -A site=(
  ["AWS"]="aws.amazon.com"
  ["Azure"]="azure.microsoft.com"
  ["GCP"]="cloud.google.com"
)

echo "site[AWS] 的值是：${site["AWS"]}"
echo "site[Azure] 的值是：${site["Azure"]}"
echo "site[GCP] 的值是：${site["GCP"]}"
echo "关联数组 site 的所有键值对如下："
for key in "${!site[@]}"; do
  echo "  $key -> ${site[$key]}"
done
