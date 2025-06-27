function demoFun(){
    str1=$1
    str2=$2
    result=`expr $str1 + $str2`
    return $?
}