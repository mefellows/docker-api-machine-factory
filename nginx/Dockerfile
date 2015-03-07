FROM dockerfile/nginx
RUN rm /etc/nginx/sites-enabled/*
RUN rm /etc/nginx/sites-enabled/default
COPY test.conf /etc/nginx/sites-enabled/default
CMD ["nginx"]
