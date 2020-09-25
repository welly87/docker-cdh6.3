#!/bin/bash

# Disable SELinux Temporarily
# setenforce 0

# iptables-save > ~/firewall.rules

systemctl disable firewalld

systemctl stop firewalld

yum -y update

yum -y clean all

yum install -y epel-release

yum -y update

# Installing necessary tools
yum install -y java-1.8.0-openjdk wget dialog curl lsof vim axel telnet java-1.8.0-openjdk-devel memkind postgresql-server 
