#!/usr/bin/env bash
cd ~/Work/SmartOSC/Smartbox/defuse
./sbx m2 $1 magento setup:static-content:deploy --theme Magento/backend --theme Smartbox/smartbox_$1 -f