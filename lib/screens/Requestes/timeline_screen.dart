import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/Requestes/request_screen.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  late UserRent _rents;

  @override
  void initState() {
    super.initState();
    _rents = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RequestPage(),
                ),
              );
            },
            icon: const Icon(Icons.timeline_outlined),
            padding: const EdgeInsets.all(4),
            color: Colors.blue,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                '${_rents.properties.first.title} (${_rents.properties.first.codRef})',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _rents.properties.first.rentalProperties.expand((rentalProp) {
                return rentalProp.solicitudPro.map((solicitud) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tipo de propiedad: ${rentalProp.propertyType}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Cliente: ${rentalProp.rentingClient}'),
                        const SizedBox(height: 8),
                        Text(
                          'Solicitud ID: ${solicitud.id}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Estado: ${solicitud.status}'),
                        const SizedBox(height: 8),
                        if (solicitud.solicitudPros.isNotEmpty) ...[
                          const Divider(),
                          const SizedBox(height: 8),
                          const Text(
                            'Respuestas:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: solicitud.solicitudPros.map((response) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Respuesta ID: ${response.requestId}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(response.solicitudProMessage),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ],
                    ),
                  );
                }).toList();
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
