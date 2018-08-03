#!/bin/bash
set -e

# Install custom dimensions
 cp -R /app/vendor/matomo/plugin-CustomDimensions/ /app/vendor/piwik/piwik/plugins/CustomDimensions
php /app/vendor/piwik/piwik/console plugin:activate CustomDimensions

while /bin/true; do
  php /app/vendor/piwik/piwik/console core:archive
  sleep 3600
done &

exec "$@"
