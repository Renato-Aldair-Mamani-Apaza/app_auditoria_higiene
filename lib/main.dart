// ============================================================================
// SIS048 - Desarrollo de Software II | Guía de Aplicación N.º 4
// Integrantes del equipo:
// 1. Mamani Apaza Renato Aldair
// 2. Quispe Quispe Heral Mirashiro
// ============================================================================

import 'package:flutter/material.dart';
import 'pantalla_establecimiento.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auditoría Higiene',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaEstablecimiento(),
    );
  }
}
