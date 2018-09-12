FROM centos:7 
MAINTAINER MIRhosting <dev@mirhosting.com> 

ENV container docker 

CMD ["/usr/sbin/init"]

RUN yum install -y http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm
RUN yum install -y Percona-XtraDB-Cluster-57

VOLUME ["/var/lib/mysql"]

EXPOSE 3306 4444 4567 4567/udp 4568

ENTRYPOINT ["mysqld"]
