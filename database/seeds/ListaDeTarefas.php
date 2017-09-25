<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class SeederListaDeTarefas extends Seeder
{

    public function run()
    {
        DB::table('lista_tarefas')->insert([
            'texto' => 'Comprar passagens aéreas.',
            'autor' => 'João',
            'status' => 'Concluíido',
            'created_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('lista_tarefas')->insert([
            'texto' => 'Reservar hotel.',
            'autor' => 'João',
            'status' => 'Concluíido',
            'created_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('lista_tarefas')->insert([
            'texto' => 'Preparar slides para a apresentação.',
            'autor' => 'João',
            'status' => 'Pendente',
            'created_at' => date('Y-m-d H:i:s')
        ]);
    }

}
