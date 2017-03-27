# centos image
FROM centos:latest
MAINTAINER Jan Bosmans

# Pre-reqs
RUN yum clean all && \
yum -y update && \
yum install -y httpd php php-gd php-xml php-mbstring php-cli php-mysql unzip wget 

# included files
ADD vhost.conf /etc/httpd/conf.d/
ADD phpinfo.php /var/www/html/
ADD index.html /var/www/html/

# open ports
EXPOSE 80

CMD /usr/sbin/apachectl -D FOREGROUND
