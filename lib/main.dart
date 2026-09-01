// ============================================================================
// SIS048 - Desarrollo de Software II | Guía de Aplicación N.º 3
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
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManosSeguras - Guía 03',
      home: ContenedorPrincipal(),
    );
  }
}

class ContenedorPrincipal extends StatefulWidget {
  const ContenedorPrincipal({super.key});

  @override
  State<ContenedorPrincipal> createState() => _ContenedorPrincipalState();
}

class _ContenedorPrincipalState extends State<ContenedorPrincipal> {
  int _indiceActual = 0;

  final List<Widget> _pantallas = const [
    PantallaEstablecimiento(),
    PantallaPersonal(),
    PantallaOportunidades(),
    PantallaError(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pantallas[_indiceActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceActual,
        onTap: (index) {
          setState(() {
            _indiceActual = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0F6E56),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.domain),
            label: 'Establecimiento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Oportunidades',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_amber),
            label: 'Prueba Error',
          ),
        ],
      ),
    );
  }
}