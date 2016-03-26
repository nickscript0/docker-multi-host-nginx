FROM nginx

# Set the timezone.
RUN echo "America/Edmonton" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

COPY nginx_conf/nginx.conf /etc/nginx/nginx.conf
