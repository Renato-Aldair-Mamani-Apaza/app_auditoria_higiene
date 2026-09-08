// ============================================================================
// SIS048 - Desarrollo de Software II | Guía de Aplicación N.º 4
// Integrantes del equipo:
// 1. Mamani Apaza Renato Aldair
// 2. Quispe Quispe Heral Mirashiro
// ============================================================================

import 'package:flutter/material.dart';

class EncabezadoSeccion extends StatelessWidget {
  final String titulo;
  final IconData icono;

  const EncabezadoSeccion({
    super.key,
    required this.titulo,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(icono, color: Colors.teal, size: 28),
          const SizedBox(width: 10),
          Text(
            titulo,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class BotonNavegacion extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final bool esPrimario;

  const BotonNavegacion({
    super.key,
    required this.texto,
    required this.onPressed,
    this.esPrimario = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: esPrimario ? Colors.teal : Colors.grey.shade300,
        foregroundColor: esPrimario ? Colors.white : Colors.black87,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
      onPressed: onPressed,
      child: Text(texto, style: const TextStyle(fontSize: 16)),
    );
  }
}
