FROM centos:latest
RUN yum install httpd
RUN yum install php 
RUN yum install mysql
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html/
EXPOSE 80