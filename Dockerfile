FROM httpd:2.4.57

# Updates and installs SSH server and creates a user 'foo' with password 'bar' that
# we can use to SSH

RUN apt-get update && \
  apt-get install -y openssh-server &&\
  sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
  apt-get install -y vim && \
  useradd foo -s /bin/bash -m && \
  echo foo:bar | chpasswd

# Starts SSH service and then Apache HTTPD
ENTRYPOINT ["/bin/sh", "-c","service ssh start && httpd-foreground"]