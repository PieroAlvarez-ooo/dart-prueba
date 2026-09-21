import '../12_clase03.dart';

class RegionSierra extends Location {
  String claseSocial;

  RegionSierra(
    super.departamento,
    super.provincia,
    super.distrito,
    super.calle,
    super.numPuerta,
    this.claseSocial,
  );
}
