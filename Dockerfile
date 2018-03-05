FROM nginx:latest
ENV container docker
MAINTAINER "Jordan Wamser" <jwamser@redpandacoding.com>

ARG SITE='php72'
ENV SITE_CONF=${SITE}

ADD conf/${SITE_CONF}.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
#CMD ['nginx','-g','daemon off;']