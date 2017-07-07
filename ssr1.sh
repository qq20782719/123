#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
yum -y install wget
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }

echo "欢迎使用 SSR一键脚本"

echo "输入1开始安装bbr"
echo "输入2开始安装ssr"
echo "输入3打补丁"
while :; do echo
	read -p "请选择： " choice
	if [[ ! $choice =~ ^[1-3]$ ]]; then
		echo "输入错误! 请输入正确的数字!"
	else
		break	
	fi
done

if [[ $choice == 1 ]];then
	chmod 777 /root/123/bbr.sh && sh /root/123/bbr.sh
fi

if [[ $choice == 2 ]];then
	chmod +x /root/123/ssr.sh && sh /root/123/ssr.sh
fi

if [[ $choice == 3 ]];then
	chmod +x /root/123/123.sh && sh /root/123/123.sh
fi
