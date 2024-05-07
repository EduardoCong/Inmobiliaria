// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rive_animation/model/course.dart';
import 'package:rive_animation/model/users.dart';

class RentalRequestPage extends StatefulWidget {
  const RentalRequestPage({Key? key}) : super(key: key);

  @override
  _RentalRequestPageState createState() => _RentalRequestPageState();
}

class _RentalRequestPageState extends State<RentalRequestPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late User _selectedUser;
  late Course _selectedProperty;
  String _requestStatus = 'Pendiente';
  bool _isActive = true;

  @override
  void initState() {
    super.initState();
    _selectedUser = userJohnDoe.first;
    _selectedProperty = property2.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitud de Alquiler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  constraints: const BoxConstraints(maxWidth: 300),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _selectedProperty.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        _selectedProperty.description,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        _selectedProperty.codRef,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
                DropdownButtonFormField<User>(
                  value: _selectedUser,
                  onChanged: (User? value) {
                    setState(() {
                      _selectedUser = value!;
                    });
                  },
                  items: [
                    ...userJohnDoe.map<DropdownMenuItem<User>>((User user) {
                      return DropdownMenuItem<User>(
                        value: user,
                        child: Text(user.name),
                      );
                    }).toList(),
                    ...userJaneSmith.map<DropdownMenuItem<User>>((User user) {
                      return DropdownMenuItem<User>(
                        value: user,
                        child: Text(user.name),
                      );
                    }).toList(),
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Cliente',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Por favor seleccione un cliente';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Descripción',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una descripción';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                DropdownButtonFormField<String>(
                  value: _requestStatus,
                  onChanged: (String? value) {
                    setState(() {
                      _requestStatus = value!;
                    });
                  },
                  items: ['Pendiente', 'Aprobado', 'Rechazado'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Estado de la Solicitud',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Por favor seleccione un estado';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Solicitud Enviada'),
                              content: const Text('¡Su solicitud de alquiler ha sido enviada con éxito!'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Aceptar'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Background color verde
                      ),
                      child: const Text('Solicitar'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text('Cancelar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
