<!doctype html>
<html lang="en">
<head>

<title>Register</title>

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet"
/>

<link rel="stylesheet" href="{{ asset('asset/css/estilos.css') }}">

</head>

<body class="body-login">

<header class="text-center mt-4">
<h1>Registro de Usuario</h1>
</header>

<main>

<div class="contenedor-login">

<form action="{{route('register.store')}}" method="POST">
@csrf

<label>Nombre del usuario</label>
<input type="text" name="name" class="form-control" placeholder="Nombre" value="{{old('name')}}">

<label class="mt-3">Correo electrónico</label>
<input type="email" name="email" class="form-control" placeholder="Correo" value="{{old('email')}}">

<label class="mt-3">Contraseña</label>
<input type="password" name="password" class="form-control" placeholder="Contraseña">

<label class="mt-3">Confirmar contraseña</label>
<input type="password" name="password_confirmation" class="form-control" placeholder="Confirmar Contraseña">

<button class="btn btn-success w-100 mt-4" type="submit">
Registrar
</button>

@if ($errors->any())
<div class="mt-3">
@foreach ($errors->all() as $error)
<p style="color:red">{{$error}}</p>
@endforeach
</div>
@endif

</form>

</div>

</main>

<footer></footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>

</body>
</html>