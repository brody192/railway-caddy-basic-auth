#!/bin/sh

set -e

if [ -z "$PROXY_PASS" ]; then
    echo "missing the PROXY_PASS variable, please add it to continue"
    exit 0
fi

if [ -z "$USERNAME" ]; then
    echo "missing the USERNAME variable, please add it to continue"
    exit 0
fi

if [ -z "$PASSWORD" ]; then
    echo "missing the PASSWORD variable, please add it to continue"
    exit 0
fi

export PASSWORD_HASH=$(caddy hash-password --plaintext $PASSWORD)

exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile 2>&1