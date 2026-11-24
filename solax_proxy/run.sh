#!/bin/sh
set -e
UPSTREAM=$(jq -r .upstream /data/options.json)
XFF=$(jq -r .forwarded_for /data/options.json)
printf 'server {\n listen 80;\n listen [::]:80;\n location / {\n  proxy_set_header X-Forwarded-For %s;\n  proxy_pass %s;\n }\n}\n' "$XFF" "$UPSTREAM" > /etc/nginx/conf.d/default.conf
exec nginx -g 'daemon off;'
