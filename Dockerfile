FROM --platform=linux/arm64 debian:stable-slim

RUN apt -y update && apt -y upgrade && apt-get -y install nginx

COPY . /var/www/html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]