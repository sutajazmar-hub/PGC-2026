<!doctype html>
<html lang="en">
<head>
    <title>Dashboard</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
    />

    <link rel="stylesheet" href="{{ asset('asset/css/estilos.css') }}">
</head>

<body>
<header>
    <h1>Dashboard</h1>
    <p>Bienvenido, {{ auth()->user()->name ?? 'Usuario' }}</p>

    <a href="{{ route('logout') }}"
   onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
   Cerrar sesión
</a>

<form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
    @csrf
</form>

</header>

<main>

    <!-- ===== NAV TURISMO ===== -->
    <nav>
        <a href="#">Inicio</a>
        <a href="#">Lugares</a>
        <a href="#contacto">Contacto</a>
    </nav>

    <div class="contenedor-principal">

        <!-- ===== CONTENIDO PRINCIPAL ===== -->
        <section>
            <h2>Lugares destacados de tu Ubaté</h2>

            @foreach($sitios as $sitio)
                <article class="card">
                    <img src="{{ asset('asset/img/' . $sitio['imagen']) }}"
                        alt="{{ $sitio['nombre'] }}"
                        class="img-lugar">

                    <div class="info">
                        <h3>{{ $sitio['nombre'] }}</h3>
                        <span class="badge">{{ $sitio['categoria'] }}</span>
                        <p>{{ $sitio['descripcion'] }}</p>
                    </div>
                </article>
            @endforeach

            <!-- ===== CONTACTO ===== -->
            <section id="contacto">
                <h3>¿Necesitas más información?</h3>

                @if(session('success'))
                    <div class="alerta-exito">{{ session('success') }}</div>
                @endif

                <form action="{{ route('contacto.enviar') }}" method="POST">
                    @csrf
                    <input type="text" name="nombre" placeholder="Tu nombre" required>
                    <textarea name="mensaje" placeholder="¿Qué lugar quieres visitar?" required></textarea>
                    <button type="submit">Enviar Consulta</button>
                </form>
            </section>

            <!-- ===== CARRUSEL ===== -->
            <section>
                <div class="carrusel">
                    <div class="carrusel-items" id="carruselItems">
                        @foreach($sitios as $sitio)
                            <div class="carrusel-item">
                                <img src="{{ asset('asset/img/' . $sitio['imagen']) }}"
                                alt="{{ $sitio['nombre'] }}"
                                class="img-lugar">
                                <div class="carrusel-caption">
                                    <h3>{{ $sitio['nombre'] }}</h3>
                                    <p>{{ $sitio['categoria'] }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <button class="btn-prev" onclick="moveSlide(-1)">&#10094;</button>
                    <button class="btn-next" onclick="moveSlide(1)">&#10095;</button>
                </div>
            </section>
        </section>

        <!-- ===== SIDEBAR ===== -->
        <aside>
            <h3>Categorías</h3>
            <ul>
                <li>🧀 Gastronomía</li>
                <li>⛪ Religión</li>
                <li>🌲 Naturaleza</li>
            </ul>
            <hr>
            <p><strong>Dato:</strong> Ubaté se encuentra a 2,556 msnm.</p>
        </aside>

    </div>
</main>

<footer>
    <p>Desarrollado en Laravel - Lizeth Suta</p>
</footer>

<script>
let currentIndex = 0;

function moveSlide(step) {
    const items = document.querySelectorAll('.carrusel-item');
    const totalItems = items.length;

    currentIndex = (currentIndex + step + totalItems) % totalItems;
    const offset = -currentIndex * 100;

    document.getElementById('carruselItems').style.transform =
        `translateX(${offset}%)`;
}

setInterval(() => {
    moveSlide(1);
}, 5000);
</script>

</body>
</html>