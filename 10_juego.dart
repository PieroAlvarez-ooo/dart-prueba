import 'dart:math';
import 'dart:io';

void main() {
  // Opciones de la computadora
  List<int> num = [1, 2, 3];
  Map<int, String> compElec = {1: 'Piedra', 2: 'Papel', 3: 'Tijera'};

  // Contadores
  print('%===================================%');
  print('Bienvenido al juego de piedra, papel o tijera');
  int ganas = 0;
  int empate = 0;
  int pierdes = 0;
  while (true) {
    print('Preciona (Q) para salir');
    print('%===================================%');
    print('\nEscoge un número según tu elección');
    print('\t[1] Piedra \n\t[2] Papel \n\t[3] Tijera');

    // null safety
    var myElec = stdin.readLineSync().toString();
    if (myElec.toUpperCase() == 'Q') {
      print('¡Gracias por jugar! :D');
      break;
    }
    if (int.tryParse(myElec) == null) {
      print('Escoge un número.');
      print('%===================================%');
      continue;
    } else {
      int myNewElec = int.parse(myElec);

      // Validamos que myNewElec sea una opción válida
      if (myNewElec == 1 || myNewElec == 2 || myNewElec == 3) {
        // Algoritm
        int numRandom = num[Random().nextInt(3)];
        if (myNewElec == numRandom) {
          empate++;
          print('La computadora eligió... ${compElec[numRandom]}');
          print('\n¡Empate! :O');
          print('%===================================%');
          print(
            '\tEstadísticas: Ganadas - $ganas | Perdidas - $pierdes | Empates - $empate',
          );
          print('%===================================%');
          continue;
        } else if (myNewElec != numRandom) {
          if (myNewElec == 1 && numRandom == 3 ||
              myNewElec == 2 && numRandom == 1 ||
              myNewElec == 3 && numRandom == 2) {
            ganas++;
            print('La computadora eligió... ${compElec[numRandom]}');
            print('\n¡Ganaste! :D');
            print('%===================================%');
            print(
              '\tEstadísticas: Ganadas - $ganas | Perdidas - $pierdes | Empates - $empate',
            );
            print('%===================================%');
            continue;
          } else {
            pierdes++;
            print('La computadora eligió... ${compElec[numRandom]}');
            print('\nPerdiste D:');
            print('%===================================%');
            print(
              '\tEstadísticas: Ganadas - $ganas | Perdidas - $pierdes | Empates - $empate',
            );
            print('%===================================%');
            continue;
          }
        }
        continue;
      } else {
        print('Escoja una opción válida');
        print('%===================================%');
        continue;
      }
    }
  }
}
