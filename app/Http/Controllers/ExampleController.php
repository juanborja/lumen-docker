<?php

namespace App\Http\Controllers;
use App\Test;
class ExampleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       // $this->request = $request;
    }

    public function buscar(){
       
        $aux = Test::where('id',1)->first(); // Find the user by email
        dd($aux->descripcion);
    }

    
}
