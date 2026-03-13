<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
class TurismoController extends Controller

{
    public function index() {
        $sitios = [
            [
                'nombre' => 'Basílica del Santo Cristo', 
                'categoria' => 'Turismo Religioso', 
                'descripcion' => 'Joyal gótica de Ubaté, famosa por su arquitectura y fe.',
                'imagen' => 'basilica.jfif'
            ],
            [
                'nombre' => 'Plaza de la gallina', 
                'categoria' => 'Gastronomía', 
                'descripcion' => 'Conjunto de locales tradicionales especializados únicamente en gallina .',
                'imagen' => 'plaza.jfif'
            ],
            [
                'nombre' => 'Chalet Campestre La Peseta', 
                'categoria' => 'Hotel', 
                'descripcion' => 'Cabañas de madera acogedoras con amplias zonas verdes y estilo alpino.',
                'imagen' => 'chalet.jfif'
            ],
            [
                'nombre' => 'Fábrica de Lácteos Ubaté', 
                'categoria' => 'Gastronomía', 
                'descripcion' => 'Diversas sedes',
                'imagen' => 'queso.jfif'
            ],
            [
                'nombre' => 'Cerro de la teta', 
                'categoria' => 'Mirador / Trekking', 
                'descripcion' => 'Punto más alto para observar todo el valle de Ubaté.',
                'imagen' => 'cerro.jfif'
            ],
            [
                'nombre' => 'Capilla de Santa Bárbara', 
                'categoria' => 'Mirador / religioso', 
                'descripcion' => 'Capilla colonial ubicada en lo alto del cerro, símbolo de protección para el pueblo.',
                'imagen' => 'capilla.jfif'
            ],
        ];
        return view('dashboard', compact('sitios'));
    }

    public function enviarContacto(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:100',
            'mensaje' => 'required|string|max:500',
        ]);
    
    
        return back()->with('success', 'Consulta enviada correctamente');
    }
}