#!/usr/bin/env bash

echo "请确认您的停车区域A区~D区"
read level

case $level in
  "A")
    echo "您的车辆已在A区立体停车库就位"
    ;;
  "B")
    echo "您的车辆已在B区立体停车库就位"
    ;;
  "C")
    echo "您的车辆已在C区立体停车库就位"
    ;;
  "D")
    echo "您的车辆已在D区立体停车库就位"
    ;;
  *)
    echo "错误区域，请重新输入"
    ;;
esac