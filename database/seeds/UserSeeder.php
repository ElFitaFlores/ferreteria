<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Rafael Flores',
            'email' => 'email@email.com',
            'password' => bcrypt('secret'),
        ]);
    }
}
