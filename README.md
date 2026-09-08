# App Auditoría de Higiene - Guía de Aplicación N° 04

Aplicación desarrollada en Flutter para la realización de auditorías de higiene, inspección de establecimientos y registro de oportunidades de mejora.

## 📁 Estructura del Código Fuente (`lib/`)

El proyecto está organizado en pantallas y componentes visuales reutilizables:

* **`main.dart`**: Punto de entrada de la aplicación y configuración del mapa de rutas navegables (`/`, `/personal`, `/oportunidades`, `/error`).
* **`pantalla_establecimiento.dart`**: Formulario inicial para la captura de datos generales del local y responsable de la auditoría.
* **`pantalla_personal.dart`**: Lista de verificación para evaluar el cumplimiento de las normas de higiene del personal.
* **`pantalla_oportunidades.dart`**: Vista de hallazgos y oportunidades de mejora identificadas durante la inspección.
* **`pantalla_error.dart`**: Pantalla para el manejo global de excepciones y rutas no encontradas.
* **`tarjeta_oportunidad.dart`**: Componente visual reutilizable para la representación de hallazgos de acuerdo con el nivel de riesgo (Alto/Medio).
* **`widgets_comunes.dart`**: Componentes de interfaz compartidos (encabezados de sección y botones estilizados).

## 🚀 Requisitos e Instalación

1. Clonar el repositorio:
   ```bash
   git clone [https://github.com/TU_USUARIO/app_auditoria_higiene.git](https://github.com/TU_USUARIO/app_auditoria_higiene.git)
