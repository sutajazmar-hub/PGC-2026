<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PlacesSeeder extends Seeder
{
    public function run()
    {
        $json = file_get_contents(public_path('lugares.json'));

        $lugares = json_decode($json, true);

        foreach ($lugares as $lugar) {


            DB::table('places')->insert([
                'user_id' => 1,
                'nombre' => $lugar['nombre'],
                'descripcion' => $lugar['descripcion'],
                'municipio' => $lugar['municipio'],
                'tipo' => $lugar['tipo'],
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }

    }
}
