FROM centos:latest

MAINTAINER Soli Como <soli@cbug.org>

RUN yum -y update && yum -y install openssh-server && yum clean all
RUN ssh-keygen -A
RUN mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chown -R root:root ~/.ssh && chmod -R 700 ~/.ssh 

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
