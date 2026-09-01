import 'package:flutter/material.dart';

class PantallaError extends StatelessWidget {
  const PantallaError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de Error de Desborde'),
        backgroundColor: const Color(0xFF0F6E56),
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: const [
            Text('OPORTUNIDAD 01', style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.radio_button_unchecked, size: 16),
            Text('DESPUÉS DEL RIESGO DE EXPOSICIÓN A FLUIDOS CORPORALES EN EL ÁREA DE CUIDADOS INTENSIVOS'),
            Icon(Icons.radio_button_unchecked, size: 16),
            Text('FRICCIÓN DE MANOS CON PREPARADO A BASE DE ALCOHOL (FM)'),
          ],
        ),
      ),
    );
  }
}