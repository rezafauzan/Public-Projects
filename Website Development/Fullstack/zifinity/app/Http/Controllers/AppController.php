<?php

namespace App\Http\Controllers;

use App\Models\Hero;
use App\Models\About;
use App\Models\Feature;
use App\Models\Service;
use App\Models\Techstack;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function index(){
        $data = [
            'hero_contents' => Hero::all(),
            'about_contents' => About::all(),
            'feature_contents' => Feature::all(),
            'services' => Service::all(),
            'frontend_techstacks' => Techstack::where('techstack_category_id', 1)->get(),
            'backend_techstacks' => Techstack::where('techstack_category_id', 2)->get(),
        ];

        return view('landing-page', $data);
    }
}
