yum install -y python-pip

pip install psycopg2==2.7.5 --ignore-installed

echo 'LC_ALL="en_US.UTF-8"' >> /etc/locale.conf

su -l postgres -c "postgresql-setup initdb"

systemctl enable postgresql

systemctl restart postgresql

# Create Cloudera database
su -u postgres psql -f /tmp/init_db.sql
