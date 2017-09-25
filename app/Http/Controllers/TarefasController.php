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

}
