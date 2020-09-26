docker run --hostname=quickstart.cloudera --privileged=true -t -i --publish-all=true -p 8888:8888 -p 80:80 -p 7180:7180 cloudera/quickstart /usr/bin/docker-quickstart

/home/cloudera/cloudera-manager --express

# https://docs.cloudera.com/documentation/enterprise/5-14-x/topics/quickstart_docker_container.html

http://165.227.128.31:7180

docker exec -it upbeat_aryabhata  /bin/bash

docker ps -a | grep "cdh*" | awk '{print $1}' | xargs docker stop

docker ps -a | grep "cdh*" | awk '{print $1}' | xargs docker rm

service cloudera-scm-server status
service cloudera-scm-agent status

service cloudera-scm-server start
service cloudera-scm-agent start

sudo -u hdfs hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100

docker commit bf34585721b5  welly87/cdh:5