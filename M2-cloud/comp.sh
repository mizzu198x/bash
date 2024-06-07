#!/usr/bin/env bash
docker-compose run --rm deploy composer install
bash ~/Work/bash/M2-cloud/exec.sh setup:di:compile
bash ~/Work/bash/M2-cloud/exec.sh setup:upgrade --keep-generated
bash ~/Work/bash/M2-cloud/exec.sh setup:static-content:deploy --force
bash ~/Work/bash/M2/chmod.sh