<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Place;
use Illuminate\Support\Facades\Auth;

class PlaceController extends Controller
{
    public function index()
    {
        $places = Place::all();
        return view('places.index', compact('places'));
    }

    public function create()
    {
        return view('places.create');
    }

    public function store(Request $request)
    {

        $rutaImagen = null;

        if($request->hasFile('imagen')){
            $rutaImagen = $request->file('imagen')->store('lugares','public');
        }

        Place::create([
            'nombre' => $request->nombre,
            'descripcion' => $request->descripcion,
            'municipio' => $request->municipio,
            'tipo' => $request->tipo,
            'imagen' => $rutaImagen,
            'user_id' => Auth::id()
        ]);

        return redirect('/lugares');
    }

    public function show($id)
{
    $place = Place::findOrFail($id);
    return view('places.show', compact('place'));
}

public function municipio($municipio)
{
    $places = Place::where('municipio', $municipio)->get();

    return view('places.index', [
        'places' => $places,
        'titulo' => "Lugares turísticos de $municipio"
    ]);
}

public function categoria($tipo)
{
    $places = Place::where('tipo', $tipo)->get();

    return view('places.index', [
        'places' => $places,
        'titulo' => "$tipo "
    ]);
}
}