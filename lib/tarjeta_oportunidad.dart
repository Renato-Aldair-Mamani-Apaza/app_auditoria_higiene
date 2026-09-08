import 'package:flutter/material.dart';

class TarjetaOportunidad extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String nivelRiesgo;

  const TarjetaOportunidad({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.nivelRiesgo,
  });

  @override
  Widget build(BuildContext context) {
    final bool esAlto = nivelRiesgo.toLowerCase() == 'alto';
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(
          Icons.warning_amber_rounded,
          color: esAlto ? Colors.red : Colors.orange,
          size: 32,
        ),
        title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(descripcion),
        trailing: Chip(
          label: Text(
            nivelRiesgo,
            style: TextStyle(
              color: esAlto ? Colors.red.shade900 : Colors.orange.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: esAlto ? Colors.red.shade100 : Colors.orange.shade100,
        ),
      ),
    );
  }
}
