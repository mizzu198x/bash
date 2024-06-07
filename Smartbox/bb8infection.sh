#!/usr/bin/env bash
cd ~/Work/SmartOSC/Smartbox/defuse/apps/bb8-api/
./vendor/bin/infection --min-covered-msi=80 --only-covered --threads=6 --coverage=report/raw/phpunit/coverage