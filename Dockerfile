FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
 
RUN apt-get update && \
  apt-get install -y apt-utils && \
  apt-get install -y gcc python-dev libkrb5-dev && \
  apt-get install python3-pip -y && \
  apt-get install net-tools -y && \
  apt-get install vim -y && \
  apt-get install ssh -y && \
  apt-get install iputils-ping -y  && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt-get install krb5-user -y && \ 
  pip3 install pywinrm && \
  pip3 install ansible


RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo "[targets]"  > /etc/ansible/hosts  && \
   	echo "localhost    ansible_connection=local" >> /etc/ansible/hosts
