FROM library/debian:jessie
COPY proxy.conf /proxy.conf
RUN apt-get update && \
    apt-get install -y apache2 libapache2-mod-proxy-html && \
    a2enmod proxy && \
    a2enmod proxy_http && \
    mkdir -p /run/apache2 && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    echo "LoadModule slotmem_shm_module /usr/lib/apache2/modules/mod_slotmem_shm.so" >> /etc/apache2/apache2.conf && \
    cat /proxy.conf >> /etc/apache2/apache2.conf
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
