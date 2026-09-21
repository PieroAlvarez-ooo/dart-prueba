import 'dart:isolate';

void main() async {
  print('Esperando respuesta...');
  contadorSegundos(5);
  await llamarFuncionDatos();
}

Future<void> llamarFuncionDatos() async {
  try {
    final p = ReceivePort();
    await Isolate.spawn(obtenerDatosUsuario, p.sendPort);
    print(await p.first);
  } catch (e) {
    print(e);
  }
}

Future<void> obtenerDatosUsuario(SendPort p) async {
  return Future.delayed(Duration(seconds: 5), () {
    print('Terminé mi tarea');
    Isolate.exit(p, 'La isla ya terminó su tarea');
  });
}

// ----- contador ----
void contadorSegundos(int seg) {
  for (int k = 1; k <= seg; k++) {
    Future.delayed(Duration(seconds: k), () => print(k));
  }
}
