<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'description' => $faker->realText(250),
        'image' => $faker->imageUrl(242, 300, 'cats'),
        'price' => $faker->randomFloat(2, 10, 100),
    ];
});