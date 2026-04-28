#!/bin/sh
set -e

mkdir -p \
  /var/www/html/Application/Runtime/Cache \
  /var/www/html/Application/Runtime/Logs \
  /var/www/html/Application/Runtime/Temp \
  /var/www/html/Application/Runtime/Data \
  /var/www/html/Uploads

chmod -R 0777 /var/www/html/Application/Runtime /var/www/html/Uploads 2>/dev/null || true

exec "$@"
