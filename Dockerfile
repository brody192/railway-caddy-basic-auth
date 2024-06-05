FROM caddy:latest

COPY Caddyfile /etc/caddy/Caddyfile

RUN caddy fmt --overwrite /etc/caddy/Caddyfile

COPY --chmod=0755 entrypoint.sh ./

ENTRYPOINT ["./entrypoint.sh"]