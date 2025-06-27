echo 'CTL-C退出'
echo '请输入密码'
read str
while [ "$str" != "123456" ]
do
    echo '输入错误,请重新输入密码'
    read str
done
echo '密码输入成功'