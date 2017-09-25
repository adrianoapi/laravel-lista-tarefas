<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{

    public function run()
    {
        Model::unguard();
        $this->call(SeederListaDeTarefas::class);
        $this->command->info('Tarefas adicionadas com sucesso');
        Model::reguard();
    }

}
