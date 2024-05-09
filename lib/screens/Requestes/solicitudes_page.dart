import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/Requestes/timeline_screen.dart';

class TimelineItem extends StatefulWidget {
  const TimelineItem({Key? key}) : super(key: key);

  @override
  State<TimelineItem> createState() => _TimelineItemState();
}

class _TimelineItemState extends State<TimelineItem> {
  late UserRent _request;

  @override
  void initState() {
    super.initState();
    _request = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.access_time),
              const SizedBox(width: 8),
              Text(
                'ID del Request: ${_request.properties.first.rentalProperties.reversed.first.solicitudPro.first.id}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Estado: ${_request.properties.first.rentalProperties.reversed.first.solicitudPro.first.status}',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            'Tipo de Servicio: ${_request.properties.first.rentalProperties.reversed.first.solicitudPro.first.propertyTypes}',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TimelinePage(),
                ),
              );
            },
            child: const Text('Ver Detalles'),
          ),
          const Divider(thickness: 1, height: 40),
        ],
      ),
    );
  }
}
