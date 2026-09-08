// ============================================================================
// SIS048 - Desarrollo de Software II | Guía de Aplicación N.º 4
// Integrantes del equipo:
// 1. Mamani Apaza Renato Aldair
// 2. Quispe Quispe Heral Mirashiro
// ============================================================================

import 'package:flutter/material.dart';
import 'pantalla_establecimiento.dart';
import 'pantalla_personal.dart';
import 'pantalla_oportunidades.dart';
import 'pantalla_error.dart';

void main() {
  runApp(const AppAuditoriaHigiene());
}

class AppAuditoriaHigiene extends StatelessWidget {
  const AppAuditoriaHigiene({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auditoría Higiene',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaEstablecimiento(),
        '/personal': (context) => const PantallaPersonal(),
        '/oportunidades': (context) => const PantallaOportunidades(),
        '/error': (context) => const PantallaError(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const PantallaError(),
      ),
    );
  }
}
