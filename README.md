# Ansible 學習筆記  

作業環境  OS: CentOS 7.9  Tools: Ansible 2.9.27 

### Install Ansible 

yum install ansible 安裝Ansible

yum install libselinux-python 安裝相依套件   

下载Script脚本、Mysql程式、配置文件，執行install_mysql.sh
 
### CRUD Script

1.執行create_data.sh 可以產生千萬級別的sql語法，並source /tmp/sql.txt匯入
 
2.執行crud_mysql.sh，可以新增、刪除、修改、查詢資料

### Backup DB Script
    
執行bk_mysql.sh，備份、刪除、還原資料庫

### Monitor DB Script
    
1.執行monitor_mysql，監控Mysql 

2.加入排程，指令如下

echo "Monitor DB" >>/var/spool/cron/root

echo */5 * * * * /use/bin/sh -x /root/project/Mysql/monitor/monitor_db.sh >>/var/spool/cron/root
