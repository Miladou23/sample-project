FROM nginx

COPY index.html /usr/share/nginx/html

sudo chown -R nginx:nginx /var/cache/nginx
sudo chmod -R 755 /var/cache/nginx
sudo mkdir -p /var/cache/nginx/client_temp
sudo systemctl restart nginx

EXPOSE 8080

CMD ["nginx","-g","daemon off;"]