FROM centos:centos7
MAINTAINER Paulson McIntyre, paul+bacula-sd@gpmidi.net

ADD run.sh /run.sh
RUN  chmod 755 /run.sh \
  && chown root:root /run.sh

RUN  yum clean all \
  && yum update -y \
  && yum install -y \
    bacula-storage bacula-console bacula-client vim atop dstat mtx

EXPOSE 9103
VOLUME ["/etc/bacula","/data"]
ENTRYPOINT ["/run.sh"]
