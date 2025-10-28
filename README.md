# 🏆 Real Madrid Card - Flutter App

Una aplicación Flutter que muestra una **Card centrada del Real Madrid** con imagen oficial del escudo. Al tocar la card, aparece un **SnackBar con mensajes dinámicos** diferentes cada vez.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Real Madrid](https://img.shields.io/badge/Real%20Madrid-FFFFFF?style=for-the-badge&logo=realmadrid&logoColor=purple)

## Características

✅ **Card centrada** con diseño elegante del Real Madrid  
✅ **Imagen real** del escudo del Real Madrid desde internet  
✅ **SnackBar dinámico** con 12 mensajes diferentes del Real Madrid  
✅ **Mensajes rotativos** - cada toque muestra un mensaje diferente  
✅ **Diseño responsivo** con gradientes y sombras  
✅ **Tema de colores** del Real Madrid (morado y blanco)  
✅ **Animaciones** suaves al tocar  
✅ **Botón de acción** en el SnackBar para cerrarlo rápidamente  

## Capturas de pantalla

La aplicación muestra:
- Una card centrada con el **escudo real del Real Madrid** cargado desde internet
- Información actualizada del club (15 Champions, 36 LaLiga, 20 Copa del Rey)
- Al tocar la card, aparece un SnackBar con **mensajes diferentes** cada vez:
  - "¡Hala Madrid! ¡Y nada más! 🏆"
  - "¡15 Champions League! ⚪👑"
  - "¡Santiago Bernabéu por siempre! 🏟️"
  - "¡Los Blancos son eternos! ⚪✨"
  - Y 8 mensajes más que van rotando...

## Cómo ejecutar

### Prerrequisitos

- Flutter SDK instalado
- Un emulador Android/iOS o dispositivo físico conectado

### Comandos

```bash
# Navegar al directorio del proyecto
cd real_madrid_card

# Obtener las dependencias
flutter pub get

# Ejecutar la aplicación
flutter run
```

### Opciones de ejecución

```bash
# Ejecutar en modo debug
flutter run

# Ejecutar en modo release (más rápido)
flutter run --release

# Ejecutar en un dispositivo específico
flutter devices  # Ver dispositivos disponibles
flutter run -d <device_id>
```

## Estructura del proyecto

```
real_madrid_card/
├── lib/
│   └── main.dart          # Código principal de la aplicación
├── pubspec.yaml           # Dependencias y configuración
└── README.md              # Este archivo
```

## Funcionalidades implementadas

- **Card interactiva**: Diseño elegante con sombras y bordes redondeados
- **Imagen real del escudo**: Carga la imagen oficial del Real Madrid desde internet
- **SnackBar dinámico**: 12 mensajes diferentes que rotan en cada toque
- **Fallback de imagen**: Si no carga la imagen, muestra un ícono alternativo
- **Loading indicator**: Muestra progreso mientras carga la imagen
- **Botón de acción**: Permite cerrar el SnackBar manualmente
- **Tema personalizado**: Colores del Real Madrid
- **Responsive design**: Se adapta a diferentes tamaños de pantalla
- **Animaciones**: Efectos de toque suaves
- **State management**: Controla qué mensaje mostrar en cada interacción

## Tecnologías utilizadas

- **Flutter**: Framework de desarrollo multiplataforma
- **Dart**: Lenguaje de programación
- **Material Design**: Componentes de interfaz de usuario

---

**¡Hala Madrid!** ⚪👑
