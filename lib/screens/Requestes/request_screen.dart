// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/Requestes/solicitudes_page.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  late UserRent _request;

  @override
  void initState() {
    super.initState();
    _request = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timeline de Solicitudes'),
      ),
      body: ListView.builder(
        itemCount: _request.properties.length,
        itemBuilder: (context, index) {
          final property = _request.properties[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  property.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
                const TimelineItem(),
            ],
          );
        },
      ),
    );
  }
}