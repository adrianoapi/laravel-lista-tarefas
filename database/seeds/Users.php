<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class SeederUsers extends Seeder
{

    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Adriano A costa',
            'email' => 'sdcomputadores@gmail.com',
            'password' => '123456',
            'api_token' => '123456',
            'created_at' => date('Y-m-d H:i:s')
        ]);
    }

}
