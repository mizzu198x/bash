#!/usr/bin/env bash
bin/magento setup:static-content:deploy --force $@
bash ~/Work/bash/M2/cf.sh