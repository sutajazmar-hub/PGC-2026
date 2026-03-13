<!doctype html>
<html lang="en">

<head>
<title>Login</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="{{ asset('asset/css/estilos.css') }}">

</head>

<body>

<header style="text-align:center; margin-top:40px;">
<h1>Rincón Provincia Ubatense Entre Montañas Y Leyendas</h1>
</header>

<main class="container" style="max-width:400px; margin-top:40px;">

<form action="{{ route('login.store') }}" method="POST">

@csrf

<div class="mb-3">

<label>Correo electrónico</label>

<input type="email" name="email" class="form-control" placeholder="Escribe tu correo">

</div>

<div class="mb-3">

<label>Contraseña</label>

<input type="password" name="password" class="form-control" placeholder="Contraseña">

</div>

<button class="btn btn-success w-100" type="submit">Iniciar sesión</button>

@if ($errors->any())
<div style="margin-top:10px;">
@foreach ($errors->all() as $error)
<p style="color:red;">{{ $error }}</p>
@endforeach
</div>
@endif

<p style="text-align:center; margin-top:20px;">

¿No tienes cuenta?

<a href="{{ route('register') }}">Registrarse</a>

</p>

</form>

</main>

</body>
</html>