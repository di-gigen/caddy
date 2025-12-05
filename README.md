# caddy
>Ultimate Web Server with Modules in a Container  

This variant using github actions to complile docker image for latest caddy in multiple architectures, which integrated modules for derestriction server and homelab web server useage.  
Di-gi Gen guaranteed to keep building transparency with following non-obtrusive modules:  

| module | useage |  
| --- | --- |  
| [cloudflare](https://github.com/caddy-dns/cloudflare)<br/> | wildcard cert provide |  
| [transform-encoder](https://github.com/caddyserver/transform-encoder)<br/> | log formater |  
| [caddy-security](https://github.com/greenpau/caddy-security)<br/> | singgle sign-on |  
| [caddy-l4](https://github.com/mholt/caddy-l4)<br/> | sni fallback |  
| [caddy-ddns](https://github.com/mholt/caddy-dynamicdns)<br/> | DDNS client |  
| [coraza-caddy](https://github.com/corazawaf/coraza-caddy)<br/> | WAF |  

Unless new requirement is declared in repository, it will pull the upstream caddyserver code unattended.  

**Github Packages:** [di-gigen/caddy](https://ghcr.io/di-gigen/caddy)  

**Docker Pull Command**  

```shell
docker pull ghcr.io/di-gigen/caddy:latest
```

**Podman Deploy Command**  

```shell
podman create -it --name caddy --restart=unless-stopped --label io.containers.autoupdate=registry --net host -v /etc/caddy:/etc/caddy:z ghcr.io/di-gigen/caddy:latest
podman generate systemd --new --name caddy > /etc/systemd/system/container-caddy.service && systemctl daemon-reload && systemctl enable --now container-caddy.service
```

* To store persist data and configurations in `/etc/caddy`, mkdir first.  
