import '../12_clase03.dart';

class RegionSelva extends Location {
  String claseSocial;

  RegionSelva(
    super.departamento,
    super.provincia,
    super.distrito,
    super.calle,
    super.numPuerta,
    this.claseSocial,
  );
}
