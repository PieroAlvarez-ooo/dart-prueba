import 'paseante.dart';

mixin class Profesion {
  String? profesion;

  String habilidades(List<String> competencias) {
    // Convetiremos esta lista en un string, pero de una forma distinta :o
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write('Mi $profesion tiene las siguientes compentencias: \n');
    for (String comptn in competencias) {
      stringBuffer.writeln(' - $comptn');
    }
    return stringBuffer.toString();
  }
}

class CarreraUniversitaria extends Andar {
  String carrera;

  CarreraUniversitaria(this.carrera);

  @override
  void caminar() {
    print('puedo caminar');
  }
}
