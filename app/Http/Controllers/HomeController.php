<?php

namespace App\Http\Controllers;

use App\Emaginproject;
use App\Projectmodule;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $emaginprojects = Emaginproject::all();

        return view('home', compact('emaginprojects'));
    }
}
