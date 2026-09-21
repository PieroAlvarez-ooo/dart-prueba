import 'dart:io';
import 'dart:math';
// import 'dart:math';

void main() {
  print('Bienvenido al juego');
  int contador = 0;
  while (true) {
    print('Escriba el número máximo (mayor que 0):');
    var num_max = stdin.readLineSync();
    if (num_max == null) {
      print('¡Ey! Escriba un número.');
      continue;
    } else if (int.tryParse(num_max) == null) {
      print('¡Ey! Escriba un número.');
      continue;
    } else {
      int num_random = Random().nextInt(int.parse(num_max));
      while (true) {
        contador++;
        print('Adivina el número: ');
        var num = stdin.readLineSync();
        if (num == null) {
          print('¡Ey! Escriba un número.');
          continue;
        } else if (int.tryParse(num) == null) {
          print('¡Ey! Escriba un número.');
          continue;
        } else {
          // while (true) {
          if (int.parse(num) < num_random) {
            print('¡Apunta a un número mayor!');
            continue;
          } else if (int.parse(num) > num_random) {
            print('¡Apunta a un número menor!');
            continue;
          } else {
            print('¡Lo has logrado :D!');
            print('Tu número de intentos fue: $contador');
            break;
          }
          // }
        }
      }
      break;
    }
  }
}
