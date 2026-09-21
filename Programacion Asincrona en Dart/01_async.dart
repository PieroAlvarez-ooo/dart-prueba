// void main() {
//   String datosUsuario = crearLlamada();
//   print(datosUsuario);
// }

// String crearLlamada() {
//   String datos = obtenerDatosUsuario().toString();
//   print('Si se muestra esto es lo que creo que es');
//   return datos;
// }

// Future<String> obtenerDatosUsuario() => Future.delayed(
//   Duration(seconds: 6), // Es para simular el tiempo de espera
//   (() => 'Se obtuvo los datos'),
// );

void main() {
  obtenerDatosUsuario();
  print('Obteniendo datos del usuario :V ... espera pe causa');
}

Future<void> obtenerDatosUsuario() {
  return Future.delayed(
    Duration(seconds: 2),
    () => print('Ya tenemos listo esto amigo de mi camarada :D'),
  );
}
