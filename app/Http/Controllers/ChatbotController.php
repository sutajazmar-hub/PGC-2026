<?php

namespace App\Http\Controllers;

use App\Models\Place;
use App\Services\GeminiService;
use Illuminate\Http\Request;

class ChatbotController extends Controller
{
    protected GeminiService $gemini;

    public function __construct(GeminiService $gemini)
    {
        $this->gemini = $gemini;
    }

    public function index()
    {
        return view('chatbot.index');
    }

    public function preguntar(Request $request)
    {
        $request->validate([
            'pregunta' => [
                'required',
                'string',
                'max:500',
            ],
        ]);

        $pregunta = trim($request->pregunta);

        /*
        |--------------------------------------------------------------------------
        | Buscar información turística
        |--------------------------------------------------------------------------
        */

        $places = Place::query()
            ->select([
                'nombre',
                'descripcion',
                'municipio',
                'tipo',
            ])
            ->get();

        /*
        |--------------------------------------------------------------------------
        | Crear contexto para Gemini
        |--------------------------------------------------------------------------
        */

        if ($places->isEmpty()) {
            $contexto = 'Actualmente no hay lugares turísticos registrados en la plataforma.';
        } else {

            $contexto = $places->map(function ($place) {

                return
                    "Nombre: {$place->nombre}\n" .
                    "Municipio: {$place->municipio}\n" .
                    "Categoría: {$place->tipo}\n" .
                    "Descripción: {$place->descripcion}\n";

            })->implode("\n---\n");
        }

        /*
        |--------------------------------------------------------------------------
        | Enviar pregunta + información a Gemini
        |--------------------------------------------------------------------------
        */

        try {

            $respuesta = $this->gemini->generarRespuesta(
                $pregunta,
                $contexto
            );

            return response()->json([
                'success' => true,
                'respuesta' => $respuesta,
            ]);

        } catch (\Throwable $e) {

            \Log::error('ERROR CHATBOT: ' . $e->getMessage());
        
            return response()->json([
                'success' => false,
                'respuesta' => 'Error del chatbot: ' . $e->getMessage(),
            ], 500);
        }
    }
}