FROM welly87/centos7:1.0
MAINTAINER Welly Tambunan <if05041@gmail.com>

ADD docker_files/init_db.sql /tmp/init_db.sql
ADD docker_files/cloudera-manager.repo /tmp/cloudera-manager.repo
ADD docker_files/RPM-GPG-KEY-cloudera /tmp/RPM-GPG-KEY-cloudera
ADD docker_files/cdh_centos_startup_script.sh /usr/bin/cdh_centos_startup_script.sh
ADD docker_files/cdh_centos_installer.sh /tmp/cdh_centos_installer.sh

RUN \
    chmod +x /tmp/cdh_centos_installer.sh && \
    chmod +x /usr/bin/cdh_centos_startup_script.sh && \ 
    bash /tmp/cdh_centos_installer.sh

EXPOSE 7180 7180

# private and public mapping
EXPOSE 8040:8040
EXPOSE 8088:8088
EXPOSE 8020:8020
EXPOSE 8888:8888
EXPOSE 11000:11000
EXPOSE 11443:11443
EXPOSE 9090:9090

# Define default command.
CMD ["cdh_centos_startup_script.sh"]
