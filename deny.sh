#!/bin/bash

if [ -s /etc/selinux/config ] && grep 'SELINUX=enforcing' /etc/selinux/config; then
    sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
    setenforce 0
fi

yum install -y iptables iptables-services

systemctl stop firewalld
systemctl disable firewalld
systemctl start iptables
systemctl enable iptables

iptables -F
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

iptables -I INPUT -p tcp -m string --string "pull" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "video" --algo bm -j DROP
iptables -I INPUT -p tcp -m string --string "stream" --algo bm -j DROP

iptables-save > /etc/sysconfig/iptables