import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/arrendamientos/details_arren_screen.dart';

class ArrendamientosScreen extends StatelessWidget {
  final List<Arrendamientos>? arrendamientos;

  const ArrendamientosScreen({super.key, this.arrendamientos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrendamientos'),
      ),
      body: ListView.builder(
        itemCount: arrendamientos?.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(arrendamientos![index].codigoPro.title),
            subtitle: Text('Fecha Inicio: ${arrendamientos![index].fechaInicio}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArrendamientoDetailScreen(arrendamiento: arrendamientos![index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
