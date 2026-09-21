// Future<void> main() async {
//   print('Obteniendo los datos del usuario...');
//   print(await llamarDatos());
// }

// Future<String> llamarDatos() {
//   Future<String> datos = obtenerDatosUsuario();
//   return datos;
// }

// Future<String> obtenerDatosUsuario() {
//   return Future.delayed(Duration(seconds: 2), () => 'Ya lo conseguimos!');
// }

void main() async {
  contadorSegundos(4);
  imprimirDatosUsuario();
}

// Esta función es para imprimir una instancia de la función obtenerDatosUsuario en vez de hacerlo en el main
Future<void> imprimirDatosUsuario() async {
  try {
    // Estas acciones en el archivo 03 las haremos mediante un isolate, es decir, se ejecutarán en otra isla
    String datos = await obtenerDatosUsuario();
    print('Esperando datos de usuario...');
    print(datos);
  } catch (e) {
    print(e);
  }
}

Future<String> obtenerDatosUsuario() {
  return Future.delayed(
    Duration(seconds: 4),
    () => throw Exception('Error mi querido amigo'),
  );
}

// ------------- Contador:
void contadorSegundos(int seg) {
  for (int i = 1; i <= seg; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
