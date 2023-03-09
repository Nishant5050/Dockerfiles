FROM centos
WORKDIR /mnt/p1
ENV Velocity AWS
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y && yum install git vim curl maven -y
RUN git clone https://github.com/akshay00000/game-of-life.git
RUN cd /mnt/p1/game-of-life &&  mvn clean install
MAINTAINER Nishant nishantshete5050@gmail.com 
