import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';

class ArrendamientoDetailScreen extends StatefulWidget {
  const ArrendamientoDetailScreen({Key? key}) : super(key: key);

  @override
  State<ArrendamientoDetailScreen> createState() => _ArrendamientoDetailScreenState();
}

class _ArrendamientoDetailScreenState extends State<ArrendamientoDetailScreen> {
  late UserRent _details;

  @override
  void initState() {
    super.initState();
    _details = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildDetailItem(label: 'Título', value: propertiesRent.first.properties.first.rentalProperties.last.propertyType),
            _buildDetailItem(label: 'Fecha Inicio', value: propertiesRent.first.properties.first.arrendamientos!.first.status!.first.fechaApagar),
            _buildDetailItem(label: 'Fecha Final', value: propertiesRent.first.properties.first.arrendamientos!.first.status!.first.fechaPago),
            _buildDetailItem(label: 'Monto', value: propertiesRent.first.properties.first.arrendamientos!.first.monto.toString()),
            _buildDetailItem(label: 'Descuento', value: propertiesRent.first.properties.first.arrendamientos!.first.status!.first.descuento),
            _buildDetailItem(label: 'Estado', value: propertiesRent.first.properties.first.arrendamientos!.first.status!.first.statusA),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
