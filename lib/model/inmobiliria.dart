class RentalProperty {
  final String propertyType;
  final String rentingClient;
  final List<Request> solicitudPro;

  RentalProperty({
    required this.propertyType,
    required this.rentingClient,
    required this.solicitudPro,
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

class UserRent {
  final String name;
  final String apellido;
  final List<Propiedad> properties;

  UserRent({
    required this.name,
    required this.apellido,
    required this.properties,
  });
}

class Request {
  final String id;
  final RentalProperty propertyTypes;
  final UserRent user;
  final String status;
  final List<Response> solicitudPros;

  Request({
    required this.id,
    required this.propertyTypes,
    required this.user,
    required this.status,
    required this.solicitudPros,
  });
}

class Response {
  final String requestId;
  final String solicitudProMessage;

  Response({
    required this.requestId,
    required this.solicitudProMessage,
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
            rentingClient: "Ariadne Irais",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Casa",
            rentingClient: "Paulina Campos",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Oficina",
            rentingClient: "Marian Novelo",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Propiedad(
        title: "Propiedad Enriquecedora",
        codRef: "5452-545",
        rentalProperties: [
          RentalProperty(
            propertyType: "Apartamento",
            rentingClient: "Ruth Campos",
            solicitudPro: [
              Request(
                id: "02",
                propertyTypes: RentalProperty(
                  propertyType: "Apartamento",
                  rentingClient: "Ruth Campos",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [],
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Edificio",
            rentingClient: "Isaac Torres",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Estudio",
            rentingClient: "Regina Murguia",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Propiedad(
        title: "Propiedad Aquino",
        codRef: "1453-214",
        rentalProperties: [],
      ),
    ],
  ),
];
