import 'package:flutter/material.dart';
import 'package:rive_animation/screens/account_state/account_state.dart';
import 'package:rive_animation/screens/rent_propertys/rent_screen.dart';


class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Timeline de Solicitudes'),
            const SizedBox(width: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RentalRequestPage())
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Icon(Icons.home, color: Colors.white),
                ),
                title: const Text(
                  'Nombre de la Propiedad',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cliente: Nombre del Cliente',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    Text(
                      'Descripción: Descripción de la Solicitud',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    Text(
                      'Estado: Pendiente',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
                trailing: SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RentalStatementPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    ),
                    child: const Text('Ver Detalles', style: TextStyle(fontSize: 13.0)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
