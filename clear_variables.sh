#!/bin/bash
# for uploading ansible playbook to github
echo "print yes if want to clear variables"
read -r input;
if [[ "$input" == yes ]]; then
	# sed -i 's/[A-Z]{2,}/XXXX/g' hosts.yml
	sed -i 's/ansible_host: .*/ansible_host: HOSTNAME/g' hosts.yml
	sed -i 's/ansible_ssh_host: .*/ansible_ssh_host: IP_ADDRESS/g' hosts.yml
	sed -i 's/user_name: .*/user_name: USERNAME/g' hosts.yml
	sed -i 's/ssh_port: .*/ssh_port: SSHPORT/g' hosts.yml
fi
