#!/usr/bin/env bash
LOG_ERROR='/srv/project/.log/error.log'
LOG_INFO='/srv/project/.log/info.log'
LOG_NGINX_ERROR='/var/log/nginx/error.log'
LOG_NGINX_ACCESS='/var/log/nginx/access.log'
CMD='sudo docker exec $(sudo docker ps -q) tail -f'
eb ssh --command "$CMD $LOG_ERROR $LOG_NGINX_ERROR"
