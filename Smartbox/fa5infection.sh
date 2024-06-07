#!/usr/bin/env bash
cd ~/Work/SmartOSC/Smartbox/defuse/apps/fa5/
vendor/bin/infection --min-covered-msi=90.00 --only-covered --threads=6 --coverage=report/raw/phpunit/coverage --test-framework-options="--testsuite=UnitTests"
cat report/raw/infection/summary-log.txt | php bin/extract-infection-coverage.php