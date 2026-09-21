import '../paseante.dart';
import '../personas.dart';

class Trabajador extends Personas implements Andar {
  double salario;

  Trabajador(
    super._name,
    super._genero,
    super._age,
    super._phone,
    this.salario,
  );

  @override
  String crear() {
    return 'Me llamo ${getName()}, tengo ${getAage()} años y estoy vivo >:D, pero soy trabajador';
  }

  @override
  void caminar() {
    print(
      'Soy ${getName()} y camino como un trabajador bien feliz y contento :D',
    );
  }
}
