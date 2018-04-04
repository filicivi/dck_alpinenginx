# $Id: Dockerfile v.0.5 $ $Date: 2018/04/04 $ $Author: Filippo 'joeyrs' Civiletti <fc@xafe.it> $
# Dockerfile -- Directive file for automate building of docker image.

FROM alpine:3.7
LABEL maintainer="Filippo 'joeyrs' Civiletti  <fc@xafe.it>"
RUN (apk add --no-cache nginx && mkdir -p /var/log/nginx /run/nginx)
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/nginx_vhost.conf /etc/nginx/conf.d/default.conf
COPY files/index.html /srv
EXPOSE 80 443
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
CMD ["nginx", "-g", "daemon off;"]
