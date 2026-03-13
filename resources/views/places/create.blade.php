<!DOCTYPE html>
<html>

<head>

<title>Agregar Lugar</title>

<link rel="stylesheet" href="/asset/css/estilos.css">
</head>

<body>

<h2 class="titulo-form">Agregar Lugar Turístico</h2>

<div class="form-container">

<form action="/lugares" method="POST" enctype="multipart/form-data">

@csrf

<label>Nombre del lugar</label>
<input type="text" name="nombre" required>

<label>Descripción</label>
<textarea name="descripcion" required></textarea>

<label>Municipio</label>
<select name="municipio" required>

<option value="">Seleccione municipio</option>

<option value="Carmen de Carupa">Carmen de Carupa</option>
<option value="Cucunubá">Cucunubá</option>
<option value="Fúquene">Fúquene</option>
<option value="Guachetá">Guachetá</option>
<option value="Lenguazaque">Lenguazaque</option>
<option value="Simijaca">Simijaca</option>
<option value="Susa">Susa</option>
<option value="Sutatausa">Sutatausa</option>
<option value="Tausa">Tausa</option>
<option value="Ubaté">Ubaté</option>

</select>

<label>Tipo de lugar</label>
<select name="tipo">

<option value="Lugar Turístico">Lugar Turístico</option>
<option value="Restaurante">Restaurante</option>
<option value="Hotel">Hotel</option>
<option value="Glamping">Glamping</option>
<option value="Experiencia">Religioso</option>

</select>

<label>Imagen del lugar</label>
<input type="file" name="imagen">

<button type="submit">Guardar Lugar</button>

</form>

</div>

</body>

</html>