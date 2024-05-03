import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timeline de Solicitudes'),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de solicitudes en el timeline
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Podrías usar el color de la propiedad aquí
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Icon(Icons.home, color: Colors.white),
                ),
                title: Text(
                  'Nombre de la Propiedad', // Nombre de la propiedad
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cliente: Nombre del Cliente', // Nombre del cliente
                      style: const TextStyle(fontSize: 14.0),
                    ),
                    Text(
                      'Descripción: Descripción de la Solicitud', // Descripción de la solicitud
                      style: const TextStyle(fontSize: 14.0),
                    ),
                    Text(
                      'Estado: Pendiente', // Estado de la solicitud
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
                trailing: SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción al presionar el botón de ver detalles
                      // Por ejemplo, podrías navegar a una nueva pantalla para ver los detalles completos
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    ),
                    child: const Text('Ver Detalles', style: TextStyle(fontSize: 14.0)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al presionar el botón para crear una nueva solicitud
          // Por ejemplo, podrías navegar a una nueva pantalla para crear una solicitud
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
