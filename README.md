# Ansible 學習筆記  

作業環境  OS: CentOS 7.9  Tools: Ansible 2.9.27 

### Install Ansible 

yum install ansible 安裝Ansible

yum install libselinux-python 安裝相依套件   

### Deploy SSH Key  Script

1.執行deploy_sshkey.sh部屬ssh key 免帳密登入
 
2.並設定ansible host設定檔

3.ansible Web,Test -m command -a "cat /etc/redhat-release"  就可以看到是否成功 


### Backup DB Script
    
執行bk_mysql.sh，備份、刪除、還原資料庫

### Monitor DB Script
    
1.執行monitor_mysql，監控Mysql 

2.加入排程，指令如下

echo "Monitor DB" >>/var/spool/cron/root

echo */5 * * * * /use/bin/sh -x /root/project/Mysql/monitor/monitor_db.sh >>/var/spool/cron/root
