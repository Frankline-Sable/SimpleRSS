<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
       // $this->call(FeedSeeder::class);
        $this->call(JobCategorySeeder::class);
        $this->call(VacancySeeder::class);
        $this->call(RoleSeeder::class);
    }
}
