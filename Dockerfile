FROM httpd:2.4.57

RUN apt-get update && \
  apt-get install -y openssh-server &&\
  sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
  useradd foo -s /bin/bash -m && \
  echo foo:bar | chpasswd
  
ENTRYPOINT ["/bin/sh", "-c","service ssh start && httpd-foreground"]