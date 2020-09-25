# Adding cloudera repos
# https://archive.cloudera.com/cm6/6.3.1/redhat7/yum/

cp /tmp/cloudera-manager.repo /etc/yum.repos.d/

rpm --import /tmp/RPM-GPG-KEY-cloudera

# Install Cloudera Manager Server
yum install cloudera-manager-daemons cloudera-manager-agent cloudera-manager-server

/opt/cloudera/cm/schema/scm_prepare_database.sh postgresql scm cloudera P4ssw0rd

rm /etc/cloudera-scm-server/db.mgmt.properties

sudo systemctl start cloudera-scm-server