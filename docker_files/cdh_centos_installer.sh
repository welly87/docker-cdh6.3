#!/bin/bash
yum -y update

yum -y clean all

yum install -y epel-release

yum -y update

# Installing necessary tools
yum install -y java-1.8.0-openjdk wget dialog curl lsof vim axel telnet java-1.8.0-openjdk-devel memkind sudo mariadb-server

# sudo yum -y install mariadb-server

sudo systemctl stop mariadb

sudo systemctl enable mariadb

sudo systemctl start mariadb

wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.46.tar.gz

tar zxvf mysql-connector-java-5.1.46.tar.gz

sudo mkdir -p /usr/share/java/
cd mysql-connector-java-5.1.46
sudo cp mysql-connector-java-5.1.46-bin.jar /usr/share/java/mysql-connector-java.jar

mysql -u root mysql < /tmp/init_db.sql

# Adding cloudera repos
# https://archive.cloudera.com/cm6/6.3.1/redhat7/yum/

cp /tmp/cloudera-manager.repo /etc/yum.repos.d/

rpm --import /tmp/RPM-GPG-KEY-cloudera

# Install Cloudera Manager Server
yum install -y cloudera-manager-daemons cloudera-manager-agent cloudera-manager-server

/opt/cloudera/cm/schema/scm_prepare_database.sh mysql scm cloudera P4ssw0rd

rm /etc/cloudera-scm-server/db.mgmt.properties

sudo systemctl start cloudera-scm-server