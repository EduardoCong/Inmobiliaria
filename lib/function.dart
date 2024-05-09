// Función para obtener datos específicos de un UserRent
import 'package:rive_animation/model/inmobiliria.dart';

List<Map<String, dynamic>> getUserRentData(UserRent userRent) {
  List<Map<String, dynamic>> userData = [];

  // Recorrer todas las propiedades
  for (Propiedad propiedad in userRent.properties) {
    Map<String, dynamic> propertyData = {
      "title": propiedad.title,
      "codRef": propiedad.codRef,
      "rentalProperties": [],
      "arrendamientos": [],
    };

    // Recorrer todas las rentalProperties de la propiedad
    for (RentalProperty rentalProperty in propiedad.rentalProperties) {
      Map<String, dynamic> rentalPropertyData = {
        "propertyType": rentalProperty.propertyType,
        "rentingClient": rentalProperty.rentingClient,
        "solicitudPro": [],
      };

      // Recorrer todas las solicitudes de la rentalProperty
      for (Request solicitud in rentalProperty.solicitudPro) {
        Map<String, dynamic> solicitudData = {
          "id": solicitud.id,
          "status": solicitud.status,
          "solicitudPros": [],
          "servicios": [],
        };

        // Recorrer todas las respuestas de la solicitud
        for (Response respuesta in solicitud.solicitudPros) {
          Map<String, dynamic> respuestaData = {
            "requestId": respuesta.requestId,
            "solicitudProMessage": respuesta.solicitudProMessage,
          };
          solicitudData["solicitudPros"].add(respuestaData);
        }

        // Recorrer todos los servicios de la solicitud
        for (ServicesProperty servicio in solicitud.servicios) {
          solicitudData["servicios"].add({"serviceName": servicio.serviceName});
        }

        rentalPropertyData["solicitudPro"].add(solicitudData);
      }

      propertyData["rentalProperties"].add(rentalPropertyData);
    }

    // Recorrer todos los arrendamientos de la propiedad
    if (propiedad.arrendamientos != null) {
      for (Arrendamientos arrendamiento in propiedad.arrendamientos!) {
        Map<String, dynamic> arrendamientoData = {
          "fechaInicio": arrendamiento.fechaInicio,
          "fechaFinal": arrendamiento.fechaFinal,
          "monto": arrendamiento.monto,
          "periocidad": arrendamiento.periocidad,
          "clientArren": {
            "name": arrendamiento.clientArren.name,
            "apellido": arrendamiento.clientArren.apellido,
          },
          "codigoPro": {
            "codRef": arrendamiento.codigoPro.codRef,
          },
          "status": [],
        };

        // Recorrer todos los status de arrendamiento
        if (arrendamiento.status != null) {
          for (StatusArren statusArren in arrendamiento.status!) {
            Map<String, dynamic> statusData = {
              "fechaPago": statusArren.fechaPago,
              "fechaApagar": statusArren.fechaApagar,
              "descuento": statusArren.descuento,
              "statusA": statusArren.statusA,
            };
            arrendamientoData["status"].add(statusData);
          }
        }

        propertyData["arrendamientos"].add(arrendamientoData);
      }
    }

    userData.add(propertyData);
  }

  return userData;
}
