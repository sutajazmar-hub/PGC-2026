<!DOCTYPE html>
<html>

<head>
<title>Plataforma Turística</title>
<link rel="stylesheet" href="{{ asset('assets/css/estilos.css') }}">
</head>

<body>

<nav>
<a href="/">Inicio</a>
<a href="/dashboard">Dashboard</a>
<a href="/lugares">Lugares</a>
</nav>

<hr>

@yield('content')

</body>
</html>