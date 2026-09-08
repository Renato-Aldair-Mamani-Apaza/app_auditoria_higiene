# Aplicación Auditoría de Higiene - Guía N° 04

Aplicación móvil desarrollada en Flutter para la gestión, registro y seguimiento de auditorías de higiene e inspección en establecimientos.

## 📱 Estructura del Proyecto

El proyecto sigue una arquitectura modular en la carpeta `lib/`:

* `main.dart`: Configuración general del proyecto y gestión del sistema de rutas navegables.
* `pantalla_establecimiento.dart`: Formulario para el registro e inspección del local auditado.
* `pantalla_personal.dart`: Módulo de verificación de normas de higiene del personal.
* `pantalla_oportunidades.dart`: Listado de hallazgos y oportunidades de mejora detectadas.
* `pantalla_error.dart`: Vista para el manejo global de excepciones y rutas no encontradas.
* `tarjeta_oportunidad.dart`: Widget personalizado reutilizable para presentar incidencias según nivel de riesgo.

## 🚀 Requisitos de Ejecución

* **Flutter SDK**: `>=3.0.0`
* **Dart**: `>=3.0.0`

## 🛠️ Instrucciones de Instalación y Ejecución

1. Clonar el repositorio:
   ```bash
   git clone [https://github.com/TU_USUARIO/app_auditoria_higiene.git](https://github.com/TU_USUARIO/app_auditoria_higiene.git)
