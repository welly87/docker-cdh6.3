# psql -U cloudera -f /tmp/init_db.sql < P4ssw0rd

/opt/cloudera/cm/schema/scm_prepare_database.sh postgresql scm cloudera

/etc/init.d/cloudera-scm-server start
