<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Asistente Turístico | Rincón Provincia Ubatense</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        body {
            margin: 0;
            min-height: 100vh;
            background: #f4f7f3;
            font-family: Arial, sans-serif;
        }

        .chat-container {
            width: 100%;
            max-width: 900px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .chat-card {
            background: white;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
        }

        .chat-header {
            background: #315c3a;
            color: white;
            padding: 25px;
        }

        .chat-header h1 {
            font-size: 24px;
            margin-bottom: 5px;
        }

        .chat-header p {
            margin: 0;
            opacity: 0.9;
        }

        .chat-messages {
            height: 500px;
            overflow-y: auto;
            padding: 25px;
            background: #fafcf9;
        }

        .message {
            display: flex;
            margin-bottom: 18px;
        }

        .message.user {
            justify-content: flex-end;
        }

        .message-content {
            max-width: 75%;
            padding: 14px 18px;
            border-radius: 18px;
            line-height: 1.5;
        }

        .message.bot .message-content {
            background: #e8f0e8;
            color: #263b2b;
            border-bottom-left-radius: 5px;
        }

        .message.user .message-content {
            background: #315c3a;
            color: white;
            border-bottom-right-radius: 5px;
        }

        .chat-input {
            padding: 20px;
            border-top: 1px solid #ddd;
            background: white;
        }

        .input-group input {
            border-radius: 12px 0 0 12px;
            padding: 13px;
        }

        .input-group button {
            border-radius: 0 12px 12px 0;
            background: #315c3a;
            color: white;
            border: none;
            padding: 0 25px;
        }

        .input-group button:hover {
            background: #26492e;
        }

        .typing {
            font-style: italic;
            color: #777;
        }

    </style>
</head>

<body>

<div class="chat-container">

    <div class="chat-card">

        <div class="chat-header">

            <h1>
                Asistente Turístico
            </h1>

            <p>
                Rincón Provincia Ubatense: Entre Montañas y Leyendas
            </p>

        </div>

        <div
            id="chatMessages"
            class="chat-messages"
        >

            <div class="message bot">

                <div class="message-content">

                    Hola, soy el asistente turístico de
                    <strong>Rincón Provincia Ubatense</strong>.

                    <br><br>

                    Puedo ayudarte a encontrar información sobre
                    lugares turísticos, restaurantes, turismo religioso,
                    hospedajes y glamping registrados en nuestra plataforma.

                    <br><br>

                    ¿Qué lugar o municipio deseas conocer?

                </div>

            </div>

        </div>

        <div class="chat-input">

            <form id="chatForm">

                <div class="input-group">

                    <input
                        type="text"
                        id="pregunta"
                        name="pregunta"
                        class="form-control"
                        placeholder="Escribe tu pregunta..."
                        maxlength="500"
                        autocomplete="off"
                        required
                    >

                    <button
                        type="submit"
                        id="btnEnviar"
                    >
                        Enviar
                    </button>

                </div>

            </form>

        </div>

    </div>

</div>


<script>

    const chatForm = document.getElementById('chatForm');
    const preguntaInput = document.getElementById('pregunta');
    const chatMessages = document.getElementById('chatMessages');
    const btnEnviar = document.getElementById('btnEnviar');

    function agregarMensaje(mensaje, tipo) {

        const contenedor = document.createElement('div');

        contenedor.classList.add('message', tipo);

        const contenido = document.createElement('div');

        contenido.classList.add('message-content');

        contenido.innerText = mensaje;

        contenedor.appendChild(contenido);

        chatMessages.appendChild(contenedor);

        chatMessages.scrollTop = chatMessages.scrollHeight;
    }


    chatForm.addEventListener('submit', async function(event) {

        event.preventDefault();

        const pregunta = preguntaInput.value.trim();

        if (!pregunta) {
            return;
        }

        agregarMensaje(pregunta, 'user');

        preguntaInput.value = '';

        btnEnviar.disabled = true;
        btnEnviar.innerText = '...';

        agregarMensaje('Estoy consultando la información turística...', 'bot');

        const mensajesBot = document.querySelectorAll('.message.bot');

        const mensajeCarga = mensajesBot[mensajesBot.length - 1];

        try {

            const response = await fetch(
                "{{ route('chatbot.preguntar') }}",
                {
                    method: 'POST',

                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                        'X-CSRF-TOKEN': document
                            .querySelector('meta[name="csrf-token"]')
                            .getAttribute('content')
                    },

                    body: JSON.stringify({
                        pregunta: pregunta
                    })
                }
            );

            const data = await response.json();

            mensajeCarga.remove();

            if (data.success) {

                agregarMensaje(
                    data.respuesta,
                    'bot'
                );

            } else {

                agregarMensaje(
                    data.respuesta ||
                    'No fue posible obtener una respuesta.',
                    'bot'
                );
            }

        } catch (error) {

            mensajeCarga.remove();

            agregarMensaje(
                'Ocurrió un problema al comunicarse con el asistente. Intenta nuevamente.',
                'bot'
            );

            console.error(error);

        } finally {

            btnEnviar.disabled = false;
            btnEnviar.innerText = 'Enviar';

            preguntaInput.focus();
        }

    });

</script>

</body>

</html>