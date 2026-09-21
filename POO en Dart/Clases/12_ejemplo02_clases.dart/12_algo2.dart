import '12_clase03.dart';
import '12_clases2.dart';
import 'regiones/regionCosta.dart';
import 'regiones/regionSelva.dart';
import 'regiones/regionSierra.dart';

// ASOCIACIÓN DE CLASES

void main() {
  Location locationPersona1 = new Location(
    'Ica',
    'Ica',
    'Subtanjalla',
    'Sebastían Barranca',
    614,
  );

  Person persona1 = new Person(
    'Julian',
    age: 29,
    address: locationPersona1,
    phone: 920103846,
  );

  print(persona1.address.calle);

  persona1.address.calle = 'Guadalupe';

  print(persona1.address.calle);

  persona1.nameSet = 'Piero';

  RegionCosta location1 = new RegionCosta(
    'Lima',
    'Lima',
    'Villa el salvador',
    'Wawe',
    923,
    'Alta',
  );

  RegionSelva location2 = new RegionSelva(
    'Amazonas',
    'Utcubamba',
    'Loreto',
    'elprimaveron',
    123,
    'media',
  );

  RegionSierra location3 = new RegionSierra(
    'Cajamarca',
    'Cajamarca',
    'Magdaleno',
    'elinvierno',
    23,
    'baja',
  );

  print(location3);

  Person<RegionSelva> algarrobin = new Person(
    'Papuel',
    age: 23,
    address: location2,
    phone: 4356346357,
  );

  print(algarrobin);

  Person<RegionCosta> algarrobo = new Person(
    'algarrobo',
    age: 24,
    address: location1,
    phone: 910234054,
  );

  print(algarrobo.address.claseSocial);
}
