#!/usr/bin/env bash
docker exec -it cmhub_php bin/console doctrine:database:create
docker exec -it cmhub_php bin/console doctrine:migrations:migrate -n
docker exec -it cmhub_php bin/console hautelook:fixtures:load -n