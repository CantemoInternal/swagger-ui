FROM nginx:stable-alpine
MAINTAINER Sergey Nuzhdin <sergey@cantemo.com>

ENV INSTALL_DIR=/opt/swagger-ui

RUN mkdir -p $INSTALL_DIR

WORKDIR $INSTALL_DIR

ADD ./dist $INSTALL_DIR
ADD ./nginx-site.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
