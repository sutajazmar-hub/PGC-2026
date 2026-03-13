<h1>{{ $place->nombre }}</h1>

<img src="{{ asset('storage/'.$place->imagen) }}">

<p>{{ $place->descripcion }}</p>

<p><b>Municipio:</b> {{ $place->municipio }}</p>

<p><b>Tipo:</b> {{ $place->tipo }}</p>

<a href="/lugares">Volver</a>