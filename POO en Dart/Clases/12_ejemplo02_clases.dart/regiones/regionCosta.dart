import '../12_clase03.dart';

class RegionCosta extends Location {
  String claseSocial;

  RegionCosta(
    super.departamento,
    super.provincia,
    super.distrito,
    super.calle,
    super.numPuerta,
    this.claseSocial,
  );
}
