FROM nginx
RUN apt-get update

RUN apt-get install sudo
RUN sudo mkdir -p /var/cache/nginx/client_temp
RUN sudo chown -R nginx:nginx /var/cache/nginx
RUN sudo chcon -Rt httpd_cache_t /var/cache/nginx
RUN sudo systemctl restart nginx
COPY index.html /usr/share/nginx/html
EXPOSE 8080

CMD ["nginx","-g","daemon off;"]
