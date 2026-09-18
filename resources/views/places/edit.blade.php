<!DOCTYPE html>
<html>

<head>

<title>Editar Lugar</title>

<link rel="stylesheet" href="/asset/css/estilos.css">
<style>
    .preview-imagen {
        max-width: 300px;
        max-height: 300px;
        margin: 10px 0;
        border-radius: 5px;
    }
    .imagen-actual {
        margin: 10px 0;
        padding: 10px;
        background-color: #f0f0f0;
        border-radius: 5px;
    }
</style>

</head>

<body>

<h2 class="titulo-form">Editar Lugar Turístico</h2>

<div class="form-container">

<form action="/lugares/{{ $place->id }}" method="POST" enctype="multipart/form-data">

@csrf
@method('PUT')

<label>Nombre del lugar</label>
<input type="text" name="nombre" value="{{ $place->nombre }}" required>

<label>Descripción</label>
<textarea name="descripcion" required>{{ $place->descripcion }}</textarea>

<label>Municipio</label>
<select name="municipio" required>

<option value="">Seleccione municipio</option>

<option value="Carmen de Carupa" @if($place->municipio === 'Carmen de Carupa') selected @endif>Carmen de Carupa</option>
<option value="Cucunubá" @if($place->municipio === 'Cucunubá') selected @endif>Cucunubá</option>
<option value="Fúquene" @if($place->municipio === 'Fúquene') selected @endif>Fúquene</option>
<option value="Guachetá" @if($place->municipio === 'Guachetá') selected @endif>Guachetá</option>
<option value="Lenguazaque" @if($place->municipio === 'Lenguazaque') selected @endif>Lenguazaque</option>
<option value="Simijaca" @if($place->municipio === 'Simijaca') selected @endif>Simijaca</option>
<option value="Susa" @if($place->municipio === 'Susa') selected @endif>Susa</option>
<option value="Sutatausa" @if($place->municipio === 'Sutatausa') selected @endif>Sutatausa</option>
<option value="Tausa" @if($place->municipio === 'Tausa') selected @endif>Tausa</option>
<option value="Ubaté" @if($place->municipio === 'Ubaté') selected @endif>Ubaté</option>

</select>

<label>Tipo de lugar</label>
<select name="tipo" required>

    <option value="">Seleccione una categoría</option>
    
    <option value="naturaleza" @if($place->tipo === 'naturaleza') selected @endif>
        Lugar Turístico
    </option>
    
    <option value="gastronomia" @if($place->tipo === 'gastronomia') selected @endif>
        Restaurante
    </option>
    
    <option value="religioso" @if($place->tipo === 'religioso') selected @endif>
        Turismo Religioso
    </option>
    
    <option value="hotel" @if($place->tipo === 'hotel') selected @endif>
        Hospedaje
    </option>
    
    <option value="glamping" @if($place->tipo === 'glamping') selected @endif>
        Glamping
    </option>
    
    </select>

@if($place->imagen)
<div class="imagen-actual">
    <label><strong>Imagen actual:</strong></label>
    <img src="{{ asset('storage/'.$place->imagen) }}" class="preview-imagen" alt="{{ $place->nombre }}">
</div>
@endif

<label>Cambiar imagen (opcional)</label>
<input type="file" name="imagen" accept="image/*" id="imagen-input">
<img id="preview" class="preview-imagen" style="display: none;">

<button type="submit">Guardar Cambios</button>
<a href="/lugares" style="display: inline-block; margin-top: 10px; padding: 10px 20px; background-color: #6c757d; color: white; text-decoration: none; border-radius: 5px;">Cancelar</a>

</form>

</div>

<script>
    // Preview de la imagen
    document.getElementById('imagen-input').addEventListener('change', function(e) {
        const file = e.target.files[0];
        const preview = document.getElementById('preview');
        
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                preview.src = e.target.result;
                preview.style.display = 'block';
            };
            reader.readAsDataURL(file);
        }
    });
</script>

</body>

</html>
