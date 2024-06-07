#!/usr/bin/env bash
./vendor/bin/php-cs-fixer --config=./.ci/.php_cs.dist -v fix $@