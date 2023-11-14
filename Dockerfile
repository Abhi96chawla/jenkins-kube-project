FROM centos:latest
RUN YUM install -y httpd \
zip \
unzip
ADD https://www.freecss.com/assets/files/free-css-templates/download/page254/photozenic.zip /var/www/html

WORKDIR /var/www/html
RUN unzip photozenic.zip
RUN cp -rvf photozenic/* .
RUN rm -rf photozenic photozenic.zip
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80