FROM debian:bullseye

RUN apt update && \
    apt install -y lighttpd openssl && \
    apt clean

EXPOSE 8443

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
