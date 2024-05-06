class RentalProperty {
  final String propertyType;
  final String rentingClient;

  RentalProperty({
    required this.propertyType,
    required this.rentingClient,
  });
}

class Propiedad {
  final String title;
  final String codRef;
  final List<RentalProperty> rentalProperties;

  Propiedad({
    required this.title,
    required this.codRef,
    required this.rentalProperties,
  });
}

class UserRent{
  final String name;
  final String apellido;
  final List<Propiedad> properties;

  UserRent({
    required this.name,
    required this.apellido,
    required this.properties,
  });
}


final List<UserRent> propertiesRent = [
  UserRent(
    name: "Eduardo",
    apellido: "Cong",
    properties: [
      Propiedad(
        title: "Propiedad Mezquina",
        codRef: "1233-434",
        rentalProperties: [
          RentalProperty(
            propertyType: "Local",
            rentingClient: "Ariadne Irais"
          ),
          RentalProperty(
            propertyType: "Casa",
            rentingClient: "Paulina Campos"
          ),
          RentalProperty(
            propertyType: "Oficina",
            rentingClient: "Marian Novelo"
          ),
        ]
      ),
      Propiedad(
        title: "Propiedad Enriquecedora",
        codRef: "5452-545",
        rentalProperties: [
          RentalProperty(
            propertyType: "Apartamento",
            rentingClient: "Ruth Campos"
          ),
          RentalProperty(
            propertyType: "Edificio",
            rentingClient: "Isaac Torres"
          ),
          RentalProperty(
            propertyType: "Estudio",
            rentingClient: "Regina Murguia"
          ),
        ]
      ),
      Propiedad(
        title: "Propiedad Aquino",
        codRef: "1453-214",
        rentalProperties: []
      )
    ]
  )
];
