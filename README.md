# Laravel URL rewrites example
  
## Requirements

This repository requires PHP 7.2 or higher and a database that supports json fields and functions such as MySQL 5.7 or higher.

## Installation

```bash
git clone https://github.com/ashenud/laravel-url-rewrites.git
```
Copy .env.example to .env and fill in your credentials

```bash
composer install
php artisan migrate
php artisan db:seed --class=CatalogSeeder
npm i
npm run watch
```

## Docker
```bash
chmod u+x setup.sh
./setup.sh
```
Or manually
```
docker-compose up -d
docker-compose exec app composer install
docker-compose exec app php artisan migrate
docker-compose exec app php artisan db:seed --class=CatalogSeeder
```

## Credits

- [Ruthger Idema](https://github.com/ruthgeridema)
- [All Contributors](../../contributors)