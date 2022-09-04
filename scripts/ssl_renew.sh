#!/bin/bash
HOME="<enter path -> example: /home/drupal>"

cd $HOME
/usr/local/bin/docker-compose -f docker-compose.yml run certbot renew --dry-run && \
/usr/local/bin/docker-compose -f docker-compose.yml kill -s SIGHUP webserver