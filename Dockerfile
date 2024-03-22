FROM nginx
RUNLEVEL=1  apt-get update

RUNLEVEL=1 apt-get install sudo
RUNLEVEL=1 sudo mkdir -p /var/cache/nginx/client_temp
RUNLEVEL=1 sudo chown -R nginx:nginx /var/cache/nginx
RUNLEVEL=1 sudo chcon -Rt httpd_cache_t /var/cache/nginx
RUNLEVEL=1 sudo systemctl restart nginx
COPY index.html /usr/share/nginx/html
EXPOSE 8080

CMD ["nginx","-g","daemon off;"]
