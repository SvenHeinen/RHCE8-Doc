# Ansible Info

# Installation

To enable the Ansible Engine repository for RHEL 8, run the following command:

`$ sudo subscription-manager repos --enable ansible-2.8-for-rhel-8-x86_64-rpms`

This is the RedHat way: https://access.redhat.com/articles/3174981

So either via subscription-manager or with a 'local' yum repo

## Config SSH


## Installing python

https://www.cyberciti.biz/faq/rhel-8-install-python-3-or-python-2-using-yum/

To install python 3 on RHEL 8, run: sudo yum install python3
To install python 2 on RHEL 8, run: sudo yum install python2

Ansible python interpreter config in inventory:
`[all:vars]`
`ansible_user=henkdevries`
`ansible_port=22`
`ansible_python_interpreter='/usr/bin/python3'`

https://developers.redhat.com/blog/2018/11/14/python-in-rhel-8/


## ansible.cfg

/etc/ansible/ansible.cfg = global config

Prefered to place in role directory

`ssh_args = -C -o ControlMaster=auto -o ControlPersist=60s`

## Inventory

It's a thing
YAML or INI style

## SSH keys distribution
https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

`ssh-keygen`
`eval "$(ssh-agent -s)"` Starts ssh-agent in the background
`ssh-add ~/.ssh/id_rsa` Added the key to the agent
`ssh-copy-id user@node`

## Sudoers
Add new user:

`sudo useradd keversta`
`sudo usermod keversta -G wheel`
`sudo visudo /etc/sudoers`

Uncomment:
`%wheel ALL=(ALL) NOPASSWD: ALL`

## Ansible ping
`ansible -m ping -i <inventory file>`

## Ansible facts

`ansible all -m setup -a 'filter=ansible_*_mb'

