# Descripción Técnica del Proyecto

## Aplicación de Chat con Respuestas Gif

### Resumen

La aplicación es un sistema de chat que interactúa con la API de 'https://yesno.wtf/#' para obtener respuestas en formato gif, las cuales se muestran en la interfaz de usuario como respuestas a las conversaciones en el chat.

### Tecnologías Utilizadas

- **Gestores de Estado:**
  - Se implementa un gestor de estado para manejar la información relevante de la aplicación de manera eficiente y centralizada.

- **Mappers:**
  - Se utilizan mappers para transformar y adaptar los datos recibidos de la API a la estructura necesaria para su presentación en la interfaz de usuario.

- **Peticiones HTTP:**
  - La aplicación realiza peticiones HTTP a la API de 'https://yesno.wtf/#' para obtener respuestas en forma de gifs.

- **Dio:**
  - Se utiliza el paquete Dio para realizar las peticiones HTTP de manera eficiente y manejar las respuestas de la API de forma asincrónica.

- **Paquetes:**
  - Se emplean paquetes específicos para la gestión de dependencias y la organización del código.

- **Funciones que Retornan Valores como Callbacks:**
  - Se implementan funciones que actúan como callbacks para manejar eventos asíncronos, como la recepción de respuestas de la API.

- **Scroll:**
  - Se integra un mecanismo de scroll para gestionar la visualización de mensajes en el chat y garantizar una experiencia de usuario fluida.

- **Provider:**
  - La aplicación utiliza el paquete Provider para gestionar la inyección de dependencias y compartir el estado de manera eficiente entre diferentes partes de la aplicación.

### Estructura del Proyecto

```plaintext
.
├── lib
│   ├── models
│   │   └── response_model.dart
│   ├── services
│   │   └── api_service.dart
│   ├── utils
│   │   └── data_mapper.dart
│   ├── widgets
│   │   └── chat_bubble.dart
│   ├── main.dart
│   └── ...
├── pubspec.yaml
└── ...
```
### ScreenShoots
![Captura de pantalla 1](1.png)
![Captura de pantalla 2](2.png)
![Captura de pantalla 3](3.png)
![Captura de pantalla 4](4.png)
