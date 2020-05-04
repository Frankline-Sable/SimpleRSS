<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Feed;
use Faker\Generator as Faker;

$factory->define(Feed::class, function (Faker $faker) {
    return [
        'title' => $faker->jobTitle,
        'description' => "<p>".implode("</p>\n\n<p>", $faker->paragraphs(rand(3,6)))."</p>",
        'author' => $faker->company,
    ];
});
