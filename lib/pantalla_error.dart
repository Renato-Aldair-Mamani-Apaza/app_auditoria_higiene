import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaError extends StatelessWidget {
  const PantallaError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error de Navegación'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 80, color: Colors.red),
              const SizedBox(height: 16),
              const Text(
                'La vista solicitada no está disponible o la ruta es incorrecta.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              BotonNavegacion(
                texto: 'Volver al Inicio',
                onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
