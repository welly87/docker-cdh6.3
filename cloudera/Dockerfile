FROM welly87/cdhbase:4.0

MAINTAINER Welly Tambunan <if05041@gmail.com>

# RUN apt-get install -y systemd
RUN chmod +x /usr/bin/startup.sh

RUN /etc/init.d/postgresql start && \
    /opt/cloudera/cm/schema/scm_prepare_database.sh postgresql scm cloudera P4ssw0rd 
    
    # && \ 
    # service cloudera-scm-server start
    # systemctl start cloudera-scm-server

EXPOSE 7180 7180

# private and public mapping
EXPOSE 8040:8040
EXPOSE 8088:8088
EXPOSE 8020:8020
EXPOSE 8888:8888
EXPOSE 11000:11000
EXPOSE 11443:11443
EXPOSE 9090:9090

CMD ["bash"]