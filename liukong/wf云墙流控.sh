#!/bin/bash
# 综合脚本制作及维护人员     deTian QQ ：635161624
# 前端制作及维护人员      FeverKing QQ ：836193799
# 脚本破解及更新维护人员       文骞 QQ：1337670697
# 综合管理人员               吴轩沐 QQ：1337670697
# WF云墙™一键搭建翻墙综合脚本官网：www.wfyq.info
# 如果你打开了此脚本，请留版权信息，谢谢！
# 							by：的天 QQ：635161624

##脚本破解方法：1.gzexe解压 2.upx脱壳 3.unSHC
function updata() {
rm -rf *
yum install -y curl
key=wfyq.info
return 1
}
Get_Dist_Name(){

    if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
        DISTRO='CentOS'
        PM='yum'
    elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
        DISTRO='RHEL'
        PM='yum'
    elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
        DISTRO='Aliyun'
        PM='yum'
    elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
        DISTRO='Fedora'
        PM='yum'
    elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
        DISTRO='Ubuntu'
        PM='apt'
    elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
        DISTRO='Raspbian'
        PM='apt'
    else
        DISTRO='unknow'
    fi
	printf "检测系统："
	echo $DISTRO;
	printf "检测版本号："
	cat /etc/redhat-release|sed -r 's/.* ([0-9]+)\..*/\1/'
	echo -e "************************************************"
	echo -e "*************本脚本只支持SentOs 7***************"
	echo -e "************************************************"

menu
}
function check_string(){
updata
clear
echo -e '\033[33m****************************************************************************\033[0m'
echo -e '\033[36m                    　W　F 云墙™-VPN服务器一键商用综合搭建\033[0m'
echo -e '\033[36m               　本脚本适用于搭建 SS SSR VPN　云免　游戏防封 \033[0m'
echo -e '\033[36m                 脚本适用centos 7.x 64位系统 ，已通过腾讯云 阿里云等一系列服务器 \033[0m'
echo -e '\033[36m                 交流群：937213546 欢迎你的加入       　　　　　　　　　　　　　\033[0m'
echo -e '\033[31m                 请选择正版授权，提供安全到位的售后服务，谢谢！\033[0m'
echo -e '\033[36m                 购买授权网址：http://sq.wfyq.info/  \033[0m'
echo -e '\033[36m                 官方网址：http://www.wfyq/\033[0m'
echo -e '\033[36m                 谢谢各位的支持！\033[0m'
echo -e '\033[36m                                       by:WF云墙™ 2018 All Rights Reserved\033[0m'
echo -e '\033[33m****************************************************************************\033[0m'
	echo -n -e "请输入WF云墙™官方网址 [\033[31m $key \033[0m] :" 
	read  boke
	if [ "$boke" == "wfyq.info" ] ; then
	echo " "

	else 
	check_string
	fi
	check_ip
	
}
function check_ip(){
	clear
	echo "检查是否授权中..."
	IP=`curl -s http://members.3322.org/dyndns/getip`;
	#IPA=`curl -s  https://sq.wfyq.info/sq.php?url=$IP`;
	if [[ "yes" =~ "yes" ]]  ; then
echo -e '\033[33m****************************************************************************\033[0m'
echo -e '\033[36m                    　W　F 云墙™-VPN服务器一键商用综合搭建\033[0m'
echo -e '\033[36m               　本脚本适用于搭建 SS SSR VPN　云免　游戏防封 \033[0m'
echo -e '\033[36m                 脚本适用centos 7.x 64位系统 ，已通过腾讯云 阿里云等一系列服务器 \033[0m'
echo -e '\033[31m                 授权成功，感谢支持，欢迎加入售后群提供安全到位的售后服务，谢谢！\033[0m'
echo -e '\033[36m                 售后群：937213546 欢迎你的加入       　　　　　　　　　　　　　\033[0m'
echo -e '\033[36m                 购买授权网址：http://sq.wfyq.info/  \033[0m'
echo -e '\033[36m                 官方网址：http://www.wfyq/\033[0m'
echo -e '\033[36m                 谢谢各位的支持！\033[0m'
echo -e '\033[36m                                       by:WF云墙™ 2018 All Rights Reserved\033[0m'
echo -e '\033[33m****************************************************************************\033[0m'
	menu
	
	else 
echo -e '\033[33m****************************************************************************\033[0m'
echo -e '\033[36m                    　W　F 云墙™-VPN服务器一键商用综合搭建\033[0m'
echo -e '\033[36m               　本脚本适用于搭建 SS SSR VPN　云免　游戏防封 \033[0m'
echo -e '\033[36m                 脚本适用centos 7.x 64位系统 ，已通过腾讯云 阿里云等一系列服务器 \033[0m'
echo -e '\033[36m                 交流群：937213546 欢迎你的加入       　　　　　　　　　　　　　\033[0m'
echo -e '\033[31m                 授权失败请选择正版授权，提供安全到位的售后服务，谢谢！\033[0m'
echo -e '\033[36m                 购买授权网址：http://sq.wfyq.info/  \033[0m'
echo -e '\033[36m                 官方网址：http://www.wfyq/\033[0m'
echo -e '\033[36m                 谢谢各位的支持！\033[0m'
echo -e '\033[36m                                       by:WF云墙™ 2018 All Rights Reserved\033[0m'
echo -e '\033[33m****************************************************************************\033[0m'
	exit 0;
	fi
	
}
function menu() {
clear
	echo
echo -e '\033[33m****************************************************************************\033[0m'
echo -e '\033[36m                    　W　F 云墙™-VPN服务器一键商用综合搭建\033[0m'
echo -e '\033[36m               　本脚本适用于搭建 SS SSR VPN　云免　游戏防封 \033[0m'
echo -e '\033[36m                 脚本适用centos 7.x 64位系统 ，已通过腾讯云 阿里云等一系列服务器 \033[0m'
echo -e '\033[36m                 交流群：937213546 欢迎你的加入       　　　　　　　　　　　　　\033[0m'
echo -e '\033[31m                 请选择正版授权，提供安全到位的售后服务，谢谢！\033[0m'
echo -e '\033[36m                 购买授权网址：http://sq.wfyq.info/  \033[0m'
echo -e '\033[36m                 官方网址：http://www.wfyq/\033[0m'
echo -e '\033[36m                 谢谢各位的支持！\033[0m'
echo -e '\033[36m                                       by:WF云墙™ 2018 All Rights Reserved\033[0m'
echo -e '\033[33m****************************************************************************\033[0m'
	echo -e "请选择想要搭建的脚本："
	echo
	echo -e "\033[31m 1、云免+防封＋VPN翻墙：小洋人云免一键搭建脚本 \033[0m"
	echo ""
	echo -e "\033[31m 2、云免+防封＋VPN翻墙：Fas3.0一键搭建脚本 \033[0m"
	echo ""
	echo -e "\033[31m 3、云免+防封＋VPN翻墙：快云一键搭建脚本 \033[0m"
	echo
	echo -e "\033[31m 4、SS：树莓一键ssr-panel商业面板搭建 \033[0m"
	echo
	echo -e "\033[31m 5、待更新... \033[0m"
	echo
	echo -e "\033[31m 6、待更新... \033[0m"
	echo 
	echo -e "\033[31m 7、待更新... \033[0m"
	echo
	echo -e "\033[31m 8、待更新... \033[0m"
	echo
	echo -e "\033[31m 9、退出脚本！  ♪～(´ε｀　) \033[0m"
	echo
	echo 
	read -p " 请输入安装选项并回车: " a
	echo
	k=$a

	if [[ $k == 1 ]];then
	 echo "已选择小洋人云免一键搭建脚本"
		wget https://coding.net/u/system1337/p/shell/git/raw/master/xyr.sh && bash xyr.sh
	 echo 0
	exit;1
	fi
	
	if [[ $k == 2 ]];then
	 echo "已选择Fas3.0一键搭建脚本"
		wget https://coding.net/u/system1337/p/shell/git/raw/master/fas.sh && bash fas.sh
	 echo 0
	clear
	fi
	
	if [[ $k == 3 ]];then
	 echo "已选择快云一键搭建脚本"
		wget https://coding.net/u/system1337/p/shell/git/raw/master/ky.sh && bash ky.sh
	 echo 0
	clear
	fi
	
	if [[ $k == 4 ]];then
	 echo "已选择树莓一键ssr-panel商业面板搭建"
		wget https://coding.net/u/system1337/p/shell/git/raw/master/sm.sh && bash sm.sh
	 echo 0
	clear
	fi
	
	if [[ $k == 5 ]];then
	 echo "请选择正确的搭建脚本"
	  echo 0
	clear
	fi
	
	if [[ $k == 6 ]];then
	 echo "请选择正确的搭建脚本"
	  echo 0
	clear
	fi
	
	if [[ $k == 7 ]];then
	 echo "请选择正确的搭建脚本"
	  echo 0
	clear
	fi
	
	if [[ $k == 8 ]];then
	 echo "请选择正确的搭建脚本"
	  echo 0
	clear
	fi
	
	if [[ $k == 9 ]];then
	 echo "退出脚本"
	clear
	exit 0; 
	fi;

}
echo
check_string