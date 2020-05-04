<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = array(
            array('name' => 'Admin', 'description' => 'Admin of the system'),
            array('name' => 'User', 'description' => 'User of the system'),
        );
        DB::table('roles')->delete();
        DB::table('roles')->insert($roles);
    }
}
