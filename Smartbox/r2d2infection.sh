#!/usr/bin/env bash
cd ~/Work/SmartOSC/Smartbox/defuse/apps/r2-d2-api/
vendor/bin/infection --min-covered-msi=84.60 --only-covered --threads=$(nproc) --coverage=report/raw/phpunit/coverage --test-framework-options="--testsuite=UnitTests "
cat report/raw/infection/summary-log.txt | php bin/extract-infection-coverage.php