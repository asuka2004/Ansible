#!/bin/bash
# Author      : Kung
# Build       : 2022-05-23 19:52
# Version     : V1.0
# Description : deploy ssh key to another server           
# System      : CentOS 7.9 
			       
export PS4='++ ${LINENO}'  
export LANG=C
export PATH=$PATH
[ -f /etc/init.d/functions ] && . /etc/init.d/functions

rm -f ~/.ssh/id_rsa*
ssh-keygen -f ~/.ssh/id_rsa -P " " >/dev/null 2>&1
Ssh_Pass=
Key_Path=~/.ssh/id_rsa.pub
for ip in 25 26 101
do
	sshpass -p$Ssh_Pass ssh-copy-id -i $Key_Path "-o StrictHostKeyChecking=no" Kung@192.168.88.$ip

done
