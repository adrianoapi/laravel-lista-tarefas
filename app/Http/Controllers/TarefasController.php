<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\ListaDeTarefas;

class TarefasController extends Controller
{

    public function index()
    {
        return Response()->json(ListaDeTarefas::orderBy('id', 'desc')->get(), 200);
    }

    public function store(Request $request)
    {
        $tarefa = new listaDeTarefas();
        $tarefa->texto = $request->input('texto');
        $tarefa->autor = $request->input('autor');
        $tarefa->status = $request->input('status');
        if ($tarefa->save()) {
            return Response("1", 201);
        } else {
            return Response("0", 304);
        }
    }

}
