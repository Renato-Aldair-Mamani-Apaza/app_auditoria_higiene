import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaPersonal extends StatelessWidget {
  const PantallaPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F5),
      appBar: AppBar(
        title: const Text('Observador y personal observado'),
        backgroundColor: const Color(0xFF0F6E56),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'OBSERVADOR',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F6E56),
              ),
            ),
            SizedBox(height: 8),
            CampoLectura(
              etiqueta: 'DNI O CARNET DE EXTRANJERÍA',
              valor: '45821347',
            ),
            CampoLectura(
              etiqueta: 'NOMBRE COMPLETO DEL OBSERVADOR',
              valor: 'Lic. María Elena Torres Prado',
            ),
            SizedBox(height: 16),
            Text(
              'PERSONAL OBSERVADO',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F6E56),
              ),
            ),
            SizedBox(height: 8),
            CampoLectura(
              etiqueta: 'DNI O CARNET DE EXTRANJERÍA',
              valor: '10293847',
            ),
            CampoLectura(
              etiqueta: 'NOMBRE COMPLETO DEL OBSERVADO',
              valor: 'Dr. Juan Carlos Mendoza',
            ),
            CampoLectura(
              etiqueta: 'CATEGORÍA PROFESIONAL',
              valor: 'Médico Cirujano',
            ),
          ],
        ),
      ),
    );
  }
}