FROM caddy:latest

COPY Caddyfile /etc/caddy/Caddyfile

COPY --chmod=0755 entrypoint.sh ./

RUN caddy fmt --overwrite /etc/caddy/Caddyfile

ENTRYPOINT ["./entrypoint.sh"]