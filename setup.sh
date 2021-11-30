#!/bin/bash

docker-compose up -d
docker-compose exec app composer install
docker-compose exec app php artisan migrate --force
docker-compose exec app php artisan migrate:refresh --force
docker-compose exec app php artisan db:seed --class=CatalogSeeder

