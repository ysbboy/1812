#!/bin/bash
game[0]="剪刀"
game[1]="石头"
game[2]="布"
num=$[RANDOM%3]
computer=${game[$num]}
echo "1.剪刀"
echo "2.石头"
echo "3.布"
read -p "请输入数字代表你的出拳手势：" sign
case $sign in
1)
if [ $num -eq 0 ];then
echo "平局"
elif [ $num -eq 1 ];then
echo "电脑赢了"
else
echo "你赢了"
fi;;
2)
if [ $num -eq 0 ];then
echo "你赢了"
elif [ $num -eq 1 ];then
echo "平局"
else
echo "电脑赢了"
fi;;
3)
if [ $num -eq 0 ];then
echo "电脑赢了"
elif [ $num -eq 1 ];then
echo "你赢了"
else
echo "平局"
fi;;
*)
echo "必须输入1-3的数字"
esac
