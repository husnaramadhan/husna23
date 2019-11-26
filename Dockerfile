FROM alpine
RUN apk add --update lighttpd
COPY etc/lighttpd/* /etc/lightppd/
COPY var/www/html/* /var/www/html/
EXPOSE 80

CMD ["lighttpd","-D","-f","/etc/lightppd/lighttpd.conf"]