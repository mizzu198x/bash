#!/usr/bin/env bash
docker run --rm -v ~/Work/SmartOSC/Smartbox/src:/local openapitools/openapi-generator-cli generate -i /local/bb-8-api/report/html/swagger/swagger_docs.json -g php -c /local/bb-8-api/.openapi-generator-config.json -o /local/bb-8-sdk-php