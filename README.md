Procsy v0.1

Configurable proxy server.

Environment variables required.

1. VIRTUAL_SITE_ALIAS
2. VIRTUAL_SITE_SOURCE

Nginx configuration settings.
```
location /${VIRTUAL_SITE_ALIAS} {
  proxy_pass ${VIRTUAL_SITE_SOURCE};
  ...
}
```

How to run?

```
docker run -dti \
-e VIRTUAL_SITE_ALIAS=exampledomain \
-e VIRTUAL_SITE_SOURCE=https://www.example.com \
-p 8080:80 \
roselroa/proxy-nginx
```

How to test?

```
http://localhost:8080/exampledomain/index.html?parameter1=string1
```
