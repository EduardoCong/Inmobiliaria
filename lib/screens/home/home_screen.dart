import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';

import 'components/course_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserRent _user;

  @override
  void initState() {
    super.initState();
    _user = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Propiedades",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: _user.properties.length,
                  itemBuilder: (context, index) {
                    final propiedad = _user.properties[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          CourseCard(
                            title: propiedad.title,
                            codrefs: propiedad.codRef,
                          ),
                          Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "En renta",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Column(
                children: _user.properties
                    .expand(
                      (propiedad) => propiedad.rentalProperties
                          .map(
                            (rentalProperty) => Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 20),
                              child: ListTile(
                                title: Text(
                                    'Tipo de Propiedad: ${rentalProperty.propertyType}'),
                                subtitle: Text(
                                    'Cliente: ${rentalProperty.rentingClient}'),
                              ),
                            ),
                          )
                          .toList(),
                    )
                    .toList(),
              ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
