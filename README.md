# Ansible 學習筆記  

作業環境  OS: CentOS 7.9 Tools:Ansible 2.9.27 

### Install Ansible 

yum install ansible 安裝Ansible

yum install libselinux-python 安裝相依套件   

### Deploy SSH Key  Script

1.執行deploy_sshkey.sh，部屬ssh key免帳密登入遠端主機
 
2.ansible.cfg 設定檔，主要設定是改由 Kung 去執行遠端工作

3.hosts 遠端主機設定檔

4.ansible Web,Test -m command -a "cat /etc/redhat-release"  測試是否成功 

### Playbook

1.http安裝劇本: http.yaml
 
2.複製檔案劇本: copy_hosts.yml

3.查詢系統狀況劇本: hosts_fact.yml

4.遠端增加使用者劇本: var_user_add.ymal

5.ansible Web,Test -m command -a "cat /etc/redhat-release"  就可以看到是否成功 
