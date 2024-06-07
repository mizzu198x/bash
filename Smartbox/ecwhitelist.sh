#!/usr/bin/env bash
cd ~/Work/SmartOSC/Smartbox/defuse
./sbx m2 $1 magento setup:db-declaration:generate-whitelist --module-name=$2