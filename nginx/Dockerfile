FROM dockerfile/nginx
#RUN rm /etc/nginx/conf.d/default.conf
#RUN rm /etc/nginx/conf.d/example_ssl.conf
#COPY index.html /var/www/html/
RUN rm /etc/nginx/sites-enabled/*
RUN rm /etc/nginx/sites-enabled/default
#RUN rm /etc/nginx/conf.d/*
#COPY test.conf /etc/nginx/sites-enabled/
COPY test.conf /etc/nginx/conf.d/
# COPY run.sh /tmp/run.sh
# RUN chmod +x /tmp/run.sh
#CMD /tmp/run.sh
CMD ["nginx"]
