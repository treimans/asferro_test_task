FROM redhat/ubi8
RUN nginx install
COPY static /usr/share/nginx/html
LABEL maintainer = "usha.mandya@docker.com"
