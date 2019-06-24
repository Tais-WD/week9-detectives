<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DetectiveController extends Controller
{
    //
    public function index()
    {
        $detectives = \App\Detective::all();

        return view('detectives.index', compact('detectives'));  
    }
    public function show($detective_slug)
    {
        $detective = \App\Detective::where('slug', $detective_slug)->first();

        if (!$detective) {
            abort(404, 'Detective not found');
        }

        $view = view('detectives/show');
        $view->detective = $detective;
        return $view;
    }
    public function store(Request $request){
        $crime = new \App\Crime();

        $crime->subject = $request->subject;
        $crime->description = $crime->description;
        

        $crime->save();

        return redirect(action('DetectiveController@index'));
    }
}
