FROM library/alpine:3.5
COPY sites-available/default /etc/apache2/sites-available/default
RUN apk add -U apache2 apache2-proxy && \
    mkdir -p /run/apache2 && \
    echo "LoadModule slotmem_shm_module modules/mod_slotmem_shm.so" >> /etc/apache2/httpd.conf && \
    echo "ServerName localhost" >> /etc/apache2/httpd.conf && \
    mkdir -p /etc/apache2/sites-enabled && \
    ln -s /etc/apache2/sites-available/default /etc/apache2/sites-enabled/default
EXPOSE 8080
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
