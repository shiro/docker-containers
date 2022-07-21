FROM nginx:alpine

WORKDIR /opt/app/

COPY . ./

# setup nginx files
RUN rm -rf /etc/nginx/nginx.conf \
           /etc/nginx/sites-enabled \
           /var/www && \
    ln -s "$(pwd)/docker/nginx.conf" /etc/nginx && \
    ln -s "$(pwd)/docker/sites-enabled" /etc/nginx && \
    ln -s "$(pwd)/docker/include" /etc/nginx && \
    ln -s "$(pwd)/docker/www" /var

CMD ["nginx", "-g", "daemon off;"]
