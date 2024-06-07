#!/usr/bin/env bash
php bin/magento setup:install --base-url=$1 \
    --db-host=localhost --db-name=$2 --db-user=root --db-password=root \
    --admin-firstname=Hung --admin-lastname=Nguyen --admin-email=mizzu198x@gmail.com \
    --admin-user=admin --admin-password=admin123 --language=en_US \
    --currency=USD --timezone=Asia/Ho_Chi_Minh --use-rewrites=1 --cleanup-database \
    --es-hosts=localhost:9200 --es-enable-ssl=0