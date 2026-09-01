import 'package:flutter/material.dart';

class PantallaOportunidades extends StatelessWidget {
  const PantallaOportunidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Oportunidades'),
        backgroundColor: const Color(0xFF0F6E56),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.green.shade50,
              child: const ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text('Oportunidad 1 (Activa)'),
                subtitle: Text('Antes del contacto con el paciente'),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.grey.shade100,
              child: const ListTile(
                leading: Icon(Icons.radio_button_unchecked, color: Colors.grey),
                title: Text('Oportunidad 2 (Inactiva)'),
                subtitle: Text('Antes de realizar una tarea antiséptica'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}