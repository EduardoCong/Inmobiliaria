import 'package:flutter/material.dart';
import 'package:rive_animation/model/services.dart';

class ServiceSelectionPage extends StatefulWidget {
  const ServiceSelectionPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ServiceSelectionPageState createState() => _ServiceSelectionPageState();
}

class _ServiceSelectionPageState extends State<ServiceSelectionPage> {

  late RealEstateService _services;

  @override
  void initState() {
    super.initState();
    _services = servicePropertyListing.first;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona un Servicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: servicePropertyListing.length,
          itemBuilder: (context, index) {
            final service = servicePropertyListing[index];
            return GestureDetector(
              onTap: () {
              },
              child: Container(
                decoration: BoxDecoration(
                  color: service.color,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      service.iconSrc,
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      service.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      service.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
