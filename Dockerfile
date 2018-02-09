FROM nginx:latest
COPY default.conf.template /etc/nginx/default.conf.template
COPY server.crt /etc/nginx/server.crt
COPY server.key /etc/nginx/server.key
COPY entry.sh /root/entry.sh
ENTRYPOINT /root/entry.sh
