import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaEstablecimiento extends StatelessWidget {
  const PantallaEstablecimiento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F5),
      body: SafeArea(
        child: Column(
          children: [
            const EncabezadoInstitucional(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'DATOS DEL ESTABLECIMIENTO',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F6E56),
                      ),
                    ),
                    SizedBox(height: 12),
                    CampoLectura(
                      etiqueta: 'Código Único',
                      valor: '00458213',
                    ),
                    CampoLectura(
                      etiqueta: 'Nombre del Establecimiento',
                      valor: 'Hospital Regional del Cusco',
                    ),
                    CampoLectura(
                      etiqueta: 'Categoría del Establecimiento',
                      valor: 'III-1',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}