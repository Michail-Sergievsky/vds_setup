## Ansible playbook for basic setup of vds server.

First setup when you have ip adress and root password.
* Creating user & user setup
* Hostname
* System update
* SSH hardening

It will install the following software:
* cron
* curl
* dnsutils
* git
* less
* net-tools
* nmap
* ufw
* vim

Configure:
* hostname
* ip address
* user name
* ssh port

All custome settings stored in hosts.yml

**Usage**   
First must use root user with password
```bash
ssh roo@IPADDRESS
```
to add host's fingerprint to your known_hosts file
```bash
ansible all -i hosts.yml -u root -b -m setup --ask-pass
ansible-playbook -i hosts.yml provision.yml -u root -b -t user --diff --ask-pass
```

After creating new user - root user will be disabled - must use new user 
```bash
ansible-playbook -i hosts.yml provision.yml -u NEWUSER -b -t ssh --diff
ansible-playbook -i hosts.yml provision.yml -u NEWUSER -b -t hostname --diff
ansible-playbook -i hosts.yml provision.yml -u NEWUSER -b -t system_update_ubuntu --diff
ansible all -i hosts.yml -u NEWUSER -b -m reboot
```
Script - for deleting variables before uploading to github

Comments:   
system_update_Ubuntu - have task unminimize Ubuntu

## TODO
Make some settings for ufw. 
