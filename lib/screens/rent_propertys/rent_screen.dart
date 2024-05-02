// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class RentalRequestPage extends StatefulWidget {
  const RentalRequestPage({Key? key}) : super(key: key);

  @override
  _RentalRequestPageState createState() => _RentalRequestPageState();
}

class _RentalRequestPageState extends State<RentalRequestPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _phoneNumber = '';
  String _message = '';

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
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su nombre';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Correo Electrónico'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su correo electrónico';
                    }
                    // Validar que el correo electrónico tenga un formato válido
                    if (!value.contains('@')) {
                      return 'Por favor ingrese un correo electrónico válido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration:  const InputDecoration(labelText: 'Número de Teléfono'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese su número de teléfono';
                    }
                    // Validar que el número de teléfono tenga un formato válido
                    if (value.length < 10) {
                      return 'Por favor ingrese un número de teléfono válido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _phoneNumber = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Mensaje'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese un mensaje';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _message = value!;
                  },
                  maxLines: 3, // Permitir múltiples líneas para el mensaje
                ),
                const SizedBox(height: 20),
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
                  child: const Text('Enviar Solicitud'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
