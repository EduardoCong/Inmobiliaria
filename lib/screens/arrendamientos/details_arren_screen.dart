import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';

class ArrendamientoDetailScreen extends StatelessWidget {
  final Arrendamientos? arrendamiento;

  const ArrendamientoDetailScreen({super.key, this.arrendamiento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Arrendamiento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Título: ${arrendamiento!.codigoPro.title}'),
            Text('Fecha Inicio: ${arrendamiento!.fechaInicio}'),
            Text('Fecha Final: ${arrendamiento!.fechaFinal}'),
            Text('Monto: \$${arrendamiento!.monto}'),
            Text('Periocidad: ${arrendamiento!.periocidad}'),
            Text('Status: ${arrendamiento!.status != null ? arrendamiento?.status![0].statusA : "Sin status"}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para gestionar el arrendamiento
              },
              child: const Text('Gestionar Arrendamiento'),
            ),
          ],
        ),
      ),
    );
  }
}
