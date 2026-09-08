import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaPersonal extends StatefulWidget {
  const PantallaPersonal({super.key});

  @override
  State<PantallaPersonal> createState() => _PantallaPersonalState();
}

class _PantallaPersonalState extends State<PantallaPersonal> {
  bool _indumentariaCompleta = false;
  bool _higieneManos = false;
  bool _carnetSanitario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inspección de Personal'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const EncabezadoSeccion(
              titulo: 'Criterios de Evaluación',
              icono: Icons.badge,
            ),
            CheckboxListTile(
              title: const Text('Uso correcto de indumentaria/uniforme'),
              subtitle: const Text('Cofia, mascarilla y gabán limpios'),
              value: _indumentariaCompleta,
              onChanged: (v) => setState(() => _indumentariaCompleta = v ?? false),
            ),
            CheckboxListTile(
              title: const Text('Higiene y lavado de manos'),
              subtitle: const Text('Uso de estaciones de desinfección'),
              value: _higieneManos,
              onChanged: (v) => setState(() => _higieneManos = v ?? false),
            ),
            CheckboxListTile(
              title: const Text('Carnet de sanidad vigente'),
              subtitle: const Text('Documentación al día'),
              value: _carnetSanitario,
              onChanged: (v) => setState(() => _carnetSanitario = v ?? false),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: BotonNavegacion(
                    texto: 'Atrás',
                    esPrimario: false,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: BotonNavegacion(
                    texto: 'Ver Hallazgos',
                    onPressed: () => Navigator.pushNamed(context, '/oportunidades'),
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
