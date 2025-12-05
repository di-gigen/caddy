FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/greenpau/caddy-security \
    --with github.com/mholt/caddy-l4 \
    --with github.com/caddyserver/transform-encoder \
    --with github.com/mholt/caddy-dynamicdns \
    --with github.com/corazawaf/coraza-caddy/v2@latest

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
