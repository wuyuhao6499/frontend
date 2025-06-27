# 用 expr 加法和乘法练习反引号
sum=`expr $num1 + $num2`
prod=`expr $num1 \* $num2`
echo "sum = $sum"
echo "prod = $prod"

# 用反引号计算余数
rem=`expr $num1 % $num2`
echo "remainder = $rem"

echo "----- 关系判断（分段评分）-----"

score=$1  # 假设评分用 sum 的值

if [ $score -ge 90 ] && [ $score -le 100 ]; then
  echo "停车状况：空"
elif [ $score -ge 80 ] && [ $score -lt 90 ]; then
  echo "停车状况：空闲"
elif [ $score -ge 60 ] && [ $score -lt 80 ]; then
  echo "停车状况：较空"
elif [ $score -ge 0 ] && [ $score -lt 60 ]; then
  echo "停车状况：已满"
else
  echo "超出车位上限"
fi

echo "end"