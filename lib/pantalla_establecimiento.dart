import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaEstablecimiento extends StatefulWidget {
  const PantallaEstablecimiento({super.key});

  @override
  State<PantallaEstablecimiento> createState() => _PantallaEstablecimientoState();
}

class _PantallaEstablecimientoState extends State<PantallaEstablecimiento> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _responsableController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _direccionController.dispose();
    _responsableController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos del Establecimiento'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const EncabezadoSeccion(
                titulo: 'Registro de Auditoría',
                icono: Icons.store,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre del Establecimiento',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.business),
                ),
                validator: (val) => val == null || val.isEmpty ? 'Ingrese el nombre' : null,
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _direccionController,
                decoration: const InputDecoration(
                  labelText: 'Dirección / Ubicación',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_on),
                ),
                validator: (val) => val == null || val.isEmpty ? 'Ingrese la dirección' : null,
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _responsableController,
                decoration: const InputDecoration(
                  labelText: 'Responsable del Local',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (val) => val == null || val.isEmpty ? 'Ingrese el responsable' : null,
              ),
              const SizedBox(height: 25),
              BotonNavegacion(
                texto: 'Continuar a Evaluación de Personal',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/personal');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
