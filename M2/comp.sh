#!/usr/bin/env bash
composer install
bin/magento setup:upgrade
bin/magento setup:di:compile
bin/magento setup:static-content:deploy --force
bash ~/Work/bash/M2/chmod.sh