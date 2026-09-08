import 'package:flutter/material.dart';

class PantallaPersonal extends StatefulWidget {
  const PantallaPersonal({super.key});

  @override
  State<PantallaPersonal> createState() => _PantallaPersonalState();
}

class _PantallaPersonalState extends State<PantallaPersonal> {
  bool _indumentariaCorrecta = false;
  bool _higieneManos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluación de Personal'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lista de Verificación de Personal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CheckboxListTile(
              title: const Text('Uso correcto de indumentaria (Uniforme/Cofia)'),
              value: _indumentariaCorrecta,
              onChanged: (val) => setState(() => _indumentariaCorrecta = val ?? false),
            ),
            CheckboxListTile(
              title: const Text('Cumplimiento de lavado e higiene de manos'),
              value: _higieneManos,
              onChanged: (val) => setState(() => _higieneManos = val ?? false),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Volver'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/oportunidades'),
                    child: const Text('Ver Oportunidades'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
