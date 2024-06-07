.DEFAULT_GOAL := help

help:
	@echo ""
	@echo "Available tasks:"
	@echo "    hooks                		Install the git-hooks"
	@echo "    install-docker-machine       Install the project using docker machine"
	@echo "    install-docker-native        Install the project using native docker"
	@echo "    install-docker-arm     		Install the project using native docker for M1 chip"
	@echo "    migrate              		Run the migration"
	@echo "    generate-migration			Generate new migration file"
	@echo "    unit                 		Run all unit test"
	@echo "    integration          		Run all integration test"
	@echo "    install-dev-dep      		Install the composer"
	@echo "    update-dev-dep       		Update the composer"
	@echo "    dump-autoload        		Composer dump autoload"
	@echo "    state-machine-graph          Generate state machine graph"
	@echo "    unit-cov             		Run unit tests and generate coverage"
	@echo "    docs                 		Validate the Api Docs"
	@echo ""

hooks:
	./_tools/setup-git-hooks.sh

install-docker-machine:
	docker-machine create -d virtualbox --virtualbox-hostonly-cidr "192.168.10.1/24" --virtualbox-memory 4098 --virtualbox-cpu-count 4 tamarapay
	eval $(docker-machine env tamarapay) && ./_tools/composer.sh && ./_tools/create-database.sh && ./_tools/setup-db.sh && ./_tools/setup-queue.sh
	&& echo "add the following line in the /etc/hosts" && echo "192.168.10.100 tamarapay.local"

install-docker-native:
	./_tools/start.sh && ./_tools/composer.sh && ./_tools/create-database.sh && ./_tools/setup-db.sh && ./_tools/setup-queue.sh\
 	&& echo "add the following line in the /etc/hosts" && echo "127.0.0.1  tamarapay.local"

install-docker-arm:
	./_tools/arm/setup-local.sh && ./_tools/composer.sh && ./_tools/create-database.sh && ./_tools/setup-db.sh && ./_tools/setup-queue.sh\
 	&& echo "add the following line in the /etc/hosts" && echo "127.0.0.1  tamarapay.local"

unit:
	docker exec api composer test:unit

cache-clear:
	docker exec api composer cache:clear

integration:
	docker exec api composer test:integration

unit-cov:
	docker exec api composer test:unit-cov

format:
	docker exec api composer phpcs

migrate:
	docker exec api ./bin/console doctrine:migrations:migrate -n

generate-migration:
	docker exec api composer migration:generate

install-dev-dep:
	docker exec api composer install

update-dev-dep:
	docker exec api composer update

dump-autoload:
	docker exec api composer dump-autoload

state-machine-graph:
	./bin/console workflow:dump order_state_machine | dot -Tpng > ./var/state_machine.png
	./bin/console workflow:dump pre_qualification_state_machine | dot -Tpng > ./var/pre_qualification_state_machine.png

docs:
	docker exec api-docs openapi-spec-validator /usr/share/nginx/html/docs/api.yaml


.PHONY: help hooks install-docker-machine install-docker-native install-docker-arm unit integration migrate install-dev-dep update-dev-dep dump-autoload unit-cov docs state-machine-graph
