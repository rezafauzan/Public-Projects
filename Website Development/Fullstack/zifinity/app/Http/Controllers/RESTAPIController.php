<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\Techstack;
use Illuminate\Http\Request;

class RESTAPIController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function getTechstacks()
    {
        $data = [
            'frontend_techstacks' => [
                'techstack_language' => Techstack::where('techstack_category_id', 1)->where('techstack_type', 'language')->get(),
                'techstack_framework' => Techstack::where('techstack_category_id', 1)->where('techstack_type', 'framework')->get(),
                'techstack_runtime_library' => Techstack::where('techstack_category_id', 1)->where( function( $query ){ $query->where('techstack_type', 'runtime')->orWhere('techstack_type', 'library'); } )->get(),
                'techstack_bundler_preprocessor' => Techstack::where('techstack_category_id', 1)->where( function( $query ){ $query->where('techstack_type', 'bundler')->orWhere('techstack_type', 'preprocessor'); } )->get(),
            ],
            'backend_techstacks' => [
                'techstack_language' => Techstack::where('techstack_category_id', 2)->where('techstack_type', 'language')->get(),
                'techstack_framework' => Techstack::where('techstack_category_id', 2)->where('techstack_type', 'framework')->get(),
                'techstack_runtime_library' => Techstack::where('techstack_category_id', 2)->where( function( $query ){ $query->where('techstack_type', 'runtime')->orWhere('techstack_type', 'library'); } )->get(),
                'techstack_dbms' => Techstack::where('techstack_category_id', 2)->where('techstack_type', 'Database Management System')->get(),
            ],
        ];

        return response()->json([
            'message' => 'Data fetched successfully',
            'techstacks' => $data,
        ], 200);
    }

    public function getServices()
    {
        $data = [
            'frontend_services' => Service::select('service_title', 'service_description', 'service_image')->where('service_category_id', 1)->get(),
            'backend_services' => Service::select('service_title', 'service_description', 'service_image')->where('service_category_id', 2)->get(),
        ];

        return response()->json([
            'message' => 'Data fetched successfully',
            'services' => $data,
        ], 200);
    }

}
