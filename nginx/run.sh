#!/bin/bash
sed -i "s/@API_ENDPOINT@/${API_PORT_8000_TCP_ADDR}:${API_PORT_8000_TCP_PORT}/g" /etc/nginx/conf.d/test.conf
rm /etc/nginx/sites-enabled/*
nginx

# HOSTNAME=3ee15856d4df
# API_PORT=tcp://172.17.0.36:8000
# API_PORT_8000_TCP=tcp://172.17.0.36:8000
# API_PORT_8000_TCP_ADDR=172.17.0.36
# API_PORT_8000_TCP_PORT=8000
# API_PORT_8000_TCP_PROTO=tcp
# API_NAME=/nginx/api
# API_ENV_PORT=8000
# HOME=/root