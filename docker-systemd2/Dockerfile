FROM ubuntu:18.04

ENV container docker

RUN apt-get update && apt-get install -y apt-utils gnupg gnupg2 gnupg1 dbus systemd && apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN apt-get install -y apt-utils gnupg gnupg2 gnupg1

RUN find /etc/systemd -name '*.timer' | xargs rm -v

RUN systemctl set-default multi-user.target

COPY setup /sbin/

STOPSIGNAL SIGRTMIN+3

ENTRYPOINT ["/sbin/init", "--log-target=journal"]

CMD []
