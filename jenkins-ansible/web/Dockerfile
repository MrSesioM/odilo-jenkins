FROM remote-host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                          \
  yum -y install nginx-1.12.2 openssl                  && \
  yum -y install https://repo.ius.io/ius-release-el7.rpm                  && \
  yum -y install                                                             \
    php-fpm                                                               \
    php-cli                                                               \
    php-mysqlnd                                                           \
    php-soap                                                              \
    php-xml                                                               \
    php-zip                                                               \
    php-json                                                              \
    php-mcrypt                                                            \
    php-mbstring                                                          \
    php-zip                                                               \
    php-gd                                                                \
     yum clean all

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh
