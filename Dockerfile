FROM library/debian:jessie
COPY sites-available/default /etc/apache2/sites-available/default
RUN apt-get update && \
    apt-get install -y apache2  libapache2-mod-proxy-html && \
    mkdir -p /run/apache2 && \
    echo "LoadModule slotmem_shm_module /usr/lib/apache2/modules/mod_slotmem_shm.so" >> /etc/apache2/apache2.conf && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    mkdir -p /etc/apache2/sites-enabled && \
    ln -s /etc/apache2/sites-available/default /etc/apache2/sites-enabled/default
EXPOSE 8080
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
