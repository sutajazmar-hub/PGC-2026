<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class MiPrimeraPruebaTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_la_pagina_principal_responde()
    {
        $response = $this->get('/logout');
        $response->assertStatus(200);
    }
}
