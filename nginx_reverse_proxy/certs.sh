#!/bin/sh

EMAIL=''

DATA_DIR="`pwd`/data/ssl"
WEB_DIR="`pwd`/data/letsencrypt"

GetCert() {
  docker run -it --rm \
             -v "${DATA_DIR}/etc:/etc/letsencrypt" \
             -v "${DATA_DIR}/lib:/var/lib/letsencrypt" \
             -v "${WEB_DIR}/www:/var/www/.well-known" \
             palobo/certbot \
             -t certonly --webroot -w /var/www \
             -n --keep-until-expiring --agree-tos \
             --email ${EMAIL} \
             $@
}

echo "Getting certificates..."
# GetCert -d www.mydomain.com -d mydomain.com
GetCert -d foo.example1.com
GetCert -d example2.com

echo "Done"
