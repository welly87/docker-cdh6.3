FROM welly87/pgsql:12.0

MAINTAINER Welly Tambunan <if05041@gmail.com>

ADD init_db.sql /tmp/init_db.sql
ADD cloudera-manager.list /tmp/cloudera-manager.list
ADD archive.key /tmp/archive.key
ADD install.sh /tmp/install.sh
ADD startup.sh /usr/bin/startup.sh

USER root

RUN apt-get update -y

RUN cp /tmp/cloudera-manager.list /etc/apt/sources.list.d/cloudera-manager.list

RUN apt-key add /tmp/archive.key

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 73985D43B0B19C9F

RUN apt-get update -y

RUN apt-get -y install openjdk-8-jdk 

RUN apt-get -y install cloudera-manager-daemons cloudera-manager-agent cloudera-manager-server 

RUN apt-get -y install python-pip

RUN pip install psycopg2==2.7.5 --ignore-installed
