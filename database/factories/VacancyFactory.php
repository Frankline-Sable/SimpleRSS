<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Vacancy;
use Faker\Generator as Faker;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;

$factory->define(Vacancy::class, function (Faker $faker) {
    return [
        'title' => $faker->jobTitle,
        'company' => $faker->company,
        'location' => $faker->city.", ".$faker->country,
        'category'=>array("Accounting","Chemicals","Computer Software","Fine Art")[rand(0,3)],
        'expires_on'=>Carbon::now(),
        'vacancies'=>Str::random(10),
        'salary'=>round(rand(10000,90000),-4),
        'education_level'=>array("Masters","Degree","Diploma","Certificate")[rand(0,3)],
    ];
});
