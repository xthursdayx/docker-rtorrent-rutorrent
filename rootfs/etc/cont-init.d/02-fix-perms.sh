#!/usr/bin/with-contenv sh
# shellcheck shell=sh

echo "Fixing perms..."
mkdir -p /config/rtorrent \
  /config/rutorrent \
  /data \
  /downloads \
  /passwd \
  /etc/nginx/conf.d \
  /etc/rtorrent \
  /var/cache/nginx \
  /var/lib/nginx \
  /var/log/nginx \
  /var/run/nginx \
  /var/run/php-fpm \
  /var/run/rtorrent
chown rtorrent:rtorrent \
  /config \
  /config/rtorrent \
  /config/rutorrent \
  /data \
  /downloads
chown -R rtorrent:rtorrent \
  /etc/rtorrent \
  /passwd \
  /tpls \
  /var/cache/nginx \
  /var/lib/nginx \
  /var/log/nginx \
  /var/log/php82 \
  /var/run/nginx \
  /var/run/php-fpm \
  /var/run/rtorrent

echo "Applying permissions to ${CONFIG_DIR}"
chmod "=rwx" "${CONFIG_DIR}"
