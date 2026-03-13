<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Turismo Ubaté Oficial</title>
    <link rel="stylesheet" href="{{ asset('asset/css/estilos.css') }}">

</head>
<body>

    <header>
        <h1> Turismo Ubaté</h1>
        <p>Explora la Capital Lechera de Colombia</p>
    </header>

    <nav>
        <a href="#">Inicio</a>
        <a href="#">Lugares</a>
        <a href="#inicio">Contacto</a>
    </nav>

    <div class="contenedor-principal">
        <main>
            <h2>Lugares destacados de tu Ubaté</h2>
            @foreach($sitios as $sitio)
                <article class="card">
                    <img src="{{ asset('asset/img' . $sitio['imagen']) }}" alt="{{ $sitio['nombre'] }}" class="img-lugar">
                    <div class="info">
                        <h3>{{ $sitio['nombre'] }}</h3>
                        <span class="badge">{{ $sitio['categoria'] }}</span>
                        <p>{{ $sitio['descripcion'] }}</p>
                    </div>
                </article>
            @endforeach

            <section id="contacto">
                <h3>¿Necesitas más información?</h3>
                @if(session('success'))
                    <div class="alerta-exito">{{ session('success') }}</div>
                @endif
                <form action="{{ route('contacto.enviar') }}" method="POST">
                    @csrf <input type="text" name="nombre" placeholder="Tu nombre" required>
                    <textarea name="mensaje" placeholder="¿Qué lugar quieres visitar?" required></textarea>
                    <button type="submit">Enviar Consulta</button>
                </form>
            </section>
            <section>
                <div class="carrusel">
                    <div class="carrusel-items" id="carruselItems">
                        @foreach($sitios as $sitio)
                            <div class="carrusel-item">
                                <img src="{{ asset('img/' . $sitio['imagen']) }}" alt="{{ $sitio['nombre'] }}">
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

        </main>

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

    <footer>
        <p>Desarrollado en Laravel para Trabajo en clase - Lizeth Suta</p>
    </footer>

<script>
    let currentIndex = 0;

    function moveSlide(step) {
        const items = document.querySelectorAll('.carrusel-item');
        const totalItems = items.length;
        
        currentIndex = (currentIndex + step + totalItems) % totalItems;
        const offset = -currentIndex * 100;
        
        document.getElementById('carruselItems').style.transform = `translateX(${offset}%)`;
    }

    // Auto-reproducción cada 5 segundos
    setInterval(() => {
        moveSlide(1);
    }, 5000);
</script>

</body>
</html>