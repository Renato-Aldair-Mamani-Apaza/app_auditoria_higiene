import 'package:flutter/material.dart';
import 'tarjeta_oportunidad.dart';

class PantallaOportunidades extends StatelessWidget {
  const PantallaOportunidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oportunidades de Mejora'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hallazgos Identificados',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: const [
                  TarjetaOportunidad(
                    titulo: 'Falta de Señalética',
                    descripcion: 'No se observa cartel de lavado de manos en zona de cocina.',
                    nivelRiesgo: 'Medio',
                  ),
                  TarjetaOportunidad(
                    titulo: 'Almacenamiento Inadecuado',
                    descripcion: 'Productos de limpieza cerca de insumos de cocina.',
                    nivelRiesgo: 'Alto',
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/'),
              icon: const Icon(Icons.home),
              label: const Text('Finalizar Auditoría / Volver al Inicio'),
            )
          ],
        ),
      ),
    );
  }
}
