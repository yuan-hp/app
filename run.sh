#!/bin/bash


ps=`zenity --password`
echo $ps

if test $ps
then
	echo $ps | sudo -S test true

	if [[ $? -gt 0 ]]
	then
		zenity --info --text="密码错误!"
		exit 1
	fi
fi



## 核验成功则执行后续的
zenity --notification --text="hello"



exit 0
