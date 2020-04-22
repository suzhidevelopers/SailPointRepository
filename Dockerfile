FROM centos
MAINTAINER jagadeesh.kp@tcs.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.54/bin/apache-tom$
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.54/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /usr/workdir
COPY identityiq.war /opt/tomcat/webapps/
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]