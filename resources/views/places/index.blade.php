<!DOCTYPE html>
<html>

<head>

<title>Rincón Provincia Ubatense</title>

<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<link rel="stylesheet" href="{{ asset('asset/css/estilos.css') }}">

</head>

<body>

    <header class="header">

        <div class="logo">
        
        <img src="{{ asset('asset/img/logo.png') }}" class="logo-img">
        
        <p>Rincón Provincia Ubatense</p>
        <p>Entre Montañas y Leyendas</p>
        
        </div>
        <div class="menu-icon" onclick="toggleMenu()">
            ☰
            </div>
        </header>


        <div id="menu" class="menu">

            <div class="cerrar-menu" onclick="toggleMenu()">✖</div>

            <button onclick="toggleSection('cuenta')">Cuenta</button>
            <div id="cuenta" class="submenu">
            
            <p>{{ auth()->user()->name }}</p>
            <p>{{ auth()->user()->email }}</p>
            
            </div>
            
            
            <button onclick="toggleSection('municipios')">Municipios</button>
            <div id="municipios" class="submenu">

                <a href="/municipio/Carmen de Carupa">Carmen de Carupa</a>
                <a href="/municipio/Cucunubá">Cucunubá</a>
                <a href="/municipio/Fúquene">Fúquene</a>
                <a href="/municipio/Guachetá">Guachetá</a>
                <a href="/municipio/Lenguazaque">Lenguazaque</a>
                <a href="/municipio/Simijaca">Simijaca</a>
                <a href="/municipio/Susa">Susa</a>
                <a href="/municipio/Sutatausa">Sutatausa</a>
                <a href="/municipio/Tausa">Tausa</a>
                <a href="/municipio/Ubaté">Ubaté</a>
                
                </div>
            
            
            <button onclick="toggleSection('categorias')">Categorías</button>
            <div id="categorias" class="submenu">

                <a href="/categoria/Lugar Turístico">Lugares Turísticos</a>
                <a href="/categoria/Restaurante">Restaurantes</a>
                <a href="/categoria/Hotel">Hoteles</a>
                <a href="/categoria/Glamping">Glamping</a>
                <a href="/categoria/Cafetería">Turismo Religioso </a>
                <a href="/categoria/Experiencia">Experiencias</a>
                
                </div>
            
            
            <button onclick="toggleSection('mapa')">Mapa</button>
            <div id="mapa" class="submenu">
            
            <p>Mapa interactivo próximamente</p>
            
            </div>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                
                <button type="submit">Cerrar sesión</button>
                
                </form>
            </div>



</header>

<h2 class="titulo">

    @if(isset($titulo))
    {{ $titulo }}
    @else
    Lugares Turísticos
    @endif
    
    </h2>


<div class="feed">

@foreach($places as $place)

<div class="post">

@if($place->imagen)
<img src="{{ asset('storage/'.$place->imagen) }}">
@endif

<div class="post-info">

<h3>{{ $place->nombre }}</h3>

<p>{{ $place->descripcion }}</p>

<p><b>Municipio:</b> {{ $place->municipio }}</p>

<p><b>Tipo:</b> {{ $place->tipo }}</p>

</div>

</div>

@endforeach

</div>


<div class="boton-agregar">

<a href="/lugares/crear">Agregar Lugar</a>

</div>


</div>
<script>

function toggleMenu(){

let menu = document.getElementById("menu");

menu.classList.toggle("menu-open");

}
    

    
    function toggleSection(id){
    
    let section = document.getElementById(id);
    
    if(section.style.display === "block"){
    section.style.display = "none";
    }else{
    section.style.display = "block";
    }
    
    }


    
    </script>
</body>

</html>