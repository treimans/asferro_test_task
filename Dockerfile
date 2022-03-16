FROM registry.access.redhat.com/ubi8/ubi:8.1
# Installing Nginx
RUN yum install -y nginx
# Symlinking nginx logs to stdout and stderr for docker log collection
RUN set -x \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
#Copying in nginx.conf file
COPY nginx.conf /etc/nginx/nginx.conf
# Default command to run our server!
CMD ["nginx", "-g", "daemon off;"]
