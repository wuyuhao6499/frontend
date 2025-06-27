source ./test2.txt
echo "start"
sum=$(demoFun1 24 61)
status=$?

echo "结果为：$sum"
echo "函数执行状态码:$status"