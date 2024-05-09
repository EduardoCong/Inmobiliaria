import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/arrendamientos/details_arren_screen.dart';

class ArrendamientosScreen extends StatefulWidget {
  const ArrendamientosScreen({Key? key}) : super(key: key);

  @override
  State<ArrendamientosScreen> createState() => _ArrendamientosScreenState();
}

class _ArrendamientosScreenState extends State<ArrendamientosScreen> {
  late UserRent _arrendamientos;

  @override
  void initState() {
    super.initState();
    _arrendamientos = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrendamientos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildPropertyDetails(
              title: propertiesRent.first.properties.first.title,
              codRef: propertiesRent.first.properties.first.codRef,
            ),
            SizedBox(height: 12),
            _buildDetailItem(
              label: 'Tipo de Propiedad:',
              value: propertiesRent.first.properties.first.rentalProperties.first.propertyType,
            ),
            _buildDetailItem(
              label: 'Cliente de Alquiler:',
              value: propertiesRent.first.properties.first.rentalProperties.first.rentingClient,
            ),
            _buildDetailItem(
              label: 'Fecha de Inicio:',
              value: propertiesRent.first.properties.first.arrendamientos!.first.fechaInicio,
            ),
            _buildDetailItem(
              label: 'Fecha de Finalización:',
              value: propertiesRent.first.properties.first.arrendamientos!.first.fechaFinal,
            ),
            _buildDetailItem(
              label: 'Periocidad:',
              value: propertiesRent.first.properties.first.arrendamientos!.first.periocidad,
            ),
            _buildDetailItem(
              label: 'Monto:',
              value: '\$${propertiesRent.first.properties.first.arrendamientos!.first.monto}',
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArrendamientoDetailScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 19, 98, 172),
                    padding: EdgeInsets.all(5),
                  ),
                  child: const Text("Ver Plan de Pagos"),
                ),
                ElevatedButton(
                  onPressed:() {
                    
                  },
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 19, 98, 172),
                    padding: EdgeInsets.all(5),
                  ),
                  child: const Text("Ver Proximo Pago del Mes")
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyDetails({required String title, required String codRef}) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Código de Referencia: $codRef',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem({required String label, required String value}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
