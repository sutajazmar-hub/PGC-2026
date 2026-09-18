{{-- BURBUJA DEL CHATBOT --}}

<button id="chatbotToggle" class="chatbot-button" type="button">
    ✦
</button>

<div id="chatbotWidget" class="chatbot-widget">

    {{-- ENCABEZADO --}}
    <div class="chatbot-widget-header">

        <div>
            <strong>Asistente Turístico</strong>
            <small>Rincón Provincia Ubatense</small>
        </div>

        <button
            id="chatbotClose"
            type="button"
            class="chatbot-close"
        >
            ×
        </button>

    </div>


    {{-- MENSAJES --}}
    <div id="chatbotMessages" class="chatbot-messages">

        <div class="chatbot-message bot">

            <div class="chatbot-message-content">

                Hola, soy el asistente turístico de
                <strong>Rincón Provincia Ubatense</strong>.

                <br><br>

                Puedo ayudarte a encontrar información sobre lugares
                turísticos, restaurantes, turismo religioso,
                hospedajes y glamping.

                <br><br>

                ¿Qué lugar o municipio deseas conocer?

            </div>

        </div>

    </div>


    {{-- INPUT --}}
    <div class="chatbot-input">

        <form id="chatbotForm">

            <div class="chatbot-input-group">

                <input
                    type="text"
                    id="chatbotQuestion"
                    name="pregunta"
                    placeholder="¿Qué quieres conocer?"
                    maxlength="500"
                    autocomplete="off"
                    required
                >

                <button
                    type="submit"
                    id="chatbotSend"
                >
                    →
                </button>

            </div>

        </form>

    </div>

</div>


<style>

    /* ==============================
       BOTÓN FLOTANTE
    ============================== */

    .chatbot-button {

        position: fixed;

        right: 25px;
        bottom: 25px;

        width: 60px;
        height: 60px;

        border: none;
        border-radius: 50%;

        background: #315c3a;
        color: white;

        font-size: 27px;

        cursor: pointer;

        box-shadow: 0 6px 20px rgba(0,0,0,0.20);

        z-index: 9999;

        transition: 0.2s;
    }


    .chatbot-button:hover {

        transform: scale(1.08);

        background: #26492e;
    }


    /* ==============================
       VENTANA DEL CHAT
    ============================== */

    .chatbot-widget {

        position: fixed;

        right: 25px;
        bottom: 100px;

        width: 360px;
        max-width: calc(100vw - 30px);

        height: 500px;

        background: white;

        border-radius: 18px;

        overflow: hidden;

        box-shadow: 0 10px 35px rgba(0,0,0,0.20);

        z-index: 9998;

        display: none;

        flex-direction: column;
    }


    .chatbot-widget.active {

        display: flex;
    }


    /* ==============================
       ENCABEZADO
    ============================== */

    .chatbot-widget-header {

        background: #315c3a;

        color: white;

        padding: 16px 18px;

        display: flex;

        align-items: center;

        justify-content: space-between;
    }


    .chatbot-widget-header strong {

        display: block;

        font-size: 16px;
    }


    .chatbot-widget-header small {

        display: block;

        margin-top: 3px;

        opacity: 0.85;

        font-size: 12px;
    }


    .chatbot-close {

        border: none;

        background: transparent;

        color: white;

        font-size: 28px;

        line-height: 1;

        cursor: pointer;

        padding: 0 4px;
    }


    /* ==============================
       MENSAJES
    ============================== */

    .chatbot-messages {

        flex: 1;

        overflow-y: auto;

        padding: 15px;

        background: #fafcf9;
    }


    .chatbot-message {

        display: flex;

        margin-bottom: 14px;
    }


    .chatbot-message.user {

        justify-content: flex-end;
    }


    .chatbot-message-content {

        max-width: 82%;

        padding: 11px 14px;

        border-radius: 15px;

        line-height: 1.45;

        font-size: 14px;

        white-space: pre-wrap;
    }


    .chatbot-message.bot .chatbot-message-content {

        background: #e8f0e8;

        color: #263b2b;

        border-bottom-left-radius: 4px;
    }


    .chatbot-message.user .chatbot-message-content {

        background: #315c3a;

        color: white;

        border-bottom-right-radius: 4px;
    }


    /* ==============================
       INPUT
    ============================== */

    .chatbot-input {

        padding: 12px;

        border-top: 1px solid #ddd;

        background: white;
    }


    .chatbot-input-group {

        display: flex;
    }


    .chatbot-input-group input {

        flex: 1;

        min-width: 0;

        border: 1px solid #ccc;

        border-right: none;

        border-radius: 10px 0 0 10px;

        padding: 10px;

        outline: none;

        font-size: 14px;
    }


    .chatbot-input-group input:focus {

        border-color: #315c3a;
    }


    .chatbot-input-group button {

        width: 48px;

        border: none;

        border-radius: 0 10px 10px 0;

        background: #315c3a;

        color: white;

        font-size: 20px;

        cursor: pointer;
    }


    .chatbot-input-group button:hover {

        background: #26492e;
    }


    .chatbot-input-group button:disabled {

        opacity: 0.6;

        cursor: not-allowed;
    }


    /* ==============================
       CELULAR
    ============================== */

    @media (max-width: 500px) {

        .chatbot-button {

            right: 15px;
            bottom: 15px;
        }


        .chatbot-widget {

            right: 15px;
            bottom: 85px;

            width: calc(100vw - 30px);

            height: 70vh;
        }
    }

</style>


<script>

    const chatbotToggle =
        document.getElementById('chatbotToggle');

    const chatbotWidget =
        document.getElementById('chatbotWidget');

    const chatbotClose =
        document.getElementById('chatbotClose');

    const chatbotForm =
        document.getElementById('chatbotForm');

    const chatbotQuestion =
        document.getElementById('chatbotQuestion');

    const chatbotMessages =
        document.getElementById('chatbotMessages');

    const chatbotSend =
        document.getElementById('chatbotSend');


    /* ABRIR */

    chatbotToggle.addEventListener('click', function () {

        chatbotWidget.classList.toggle('active');

        if (chatbotWidget.classList.contains('active')) {

            chatbotQuestion.focus();

        }

    });


    /* CERRAR */

    chatbotClose.addEventListener('click', function () {

        chatbotWidget.classList.remove('active');

    });


    /* AGREGAR MENSAJE */

    function agregarMensajeChatbot(mensaje, tipo) {

        const contenedor =
            document.createElement('div');

        contenedor.classList.add(
            'chatbot-message',
            tipo
        );


        const contenido =
            document.createElement('div');

        contenido.classList.add(
            'chatbot-message-content'
        );


        contenido.innerText = mensaje;


        contenedor.appendChild(contenido);

        chatbotMessages.appendChild(contenedor);


        chatbotMessages.scrollTop =
            chatbotMessages.scrollHeight;
    }


    /* ENVIAR PREGUNTA */

    chatbotForm.addEventListener(
        'submit',
        async function (event) {

            event.preventDefault();


            const pregunta =
                chatbotQuestion.value.trim();


            if (!pregunta) {

                return;

            }


            /* Mostrar pregunta */

            agregarMensajeChatbot(
                pregunta,
                'user'
            );


            chatbotQuestion.value = '';


            chatbotSend.disabled = true;

            chatbotSend.innerText = '...';


            /* Mensaje de espera */

            agregarMensajeChatbot(
                'Estoy consultando la información turística...',
                'bot'
            );


            const mensajesBot =
                document.querySelectorAll(
                    '.chatbot-message.bot'
                );


            const mensajeCarga =
                mensajesBot[mensajesBot.length - 1];


            try {

                const response =
                    await fetch(
                        "{{ route('chatbot.preguntar') }}",
                        {

                            method: 'POST',

                            headers: {

'Content-Type': 'application/json',

'Accept': 'application/json',

'X-CSRF-TOKEN': '{{ csrf_token() }}'

},

                            body:
                                JSON.stringify({

                                    pregunta:
                                        pregunta

                                })
                        }
                    );


                const data =
                    await response.json();


                mensajeCarga.remove();


                if (data.success) {

                    agregarMensajeChatbot(
                        data.respuesta,
                        'bot'
                    );

                } else {

                    agregarMensajeChatbot(
                        data.respuesta ||
                        'No fue posible obtener una respuesta.',
                        'bot'
                    );

                }


            } catch (error) {

                mensajeCarga.remove();


                agregarMensajeChatbot(
                    'Ocurrió un problema al comunicarse con el asistente. Intenta nuevamente.',
                    'bot'
                );


                console.error(error);

            } finally {

                chatbotSend.disabled = false;

                chatbotSend.innerText = '→';

                chatbotQuestion.focus();

            }

        }
    );

</script>
