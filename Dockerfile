FROM nginx
COPY index.html /usr/share/nginx/html
RUN apt-get install sudo
RUN sudo mkdir -p /var/cache/nginx/client_temp
RUN sudo chown -R nginx:nginx /var/cache/nginx
RUN sudo chcon -Rt httpd_cache_t /var/cache/nginx
RUN sudo systemctl restart nginx
EXPOSE 8080

CMD ["nginx","-g","daemon off;"]
