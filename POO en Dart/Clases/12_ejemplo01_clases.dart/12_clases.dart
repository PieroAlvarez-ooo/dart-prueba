class Persona {
  int num_hijos;
  String name;
  int _edad;
  bool? trabaja;
  String? deporte;
  String? nombreNegocio;
  bool sexoMasculino;

  get getEdad => this._edad;
  set setEdad(value) => this._edad = value;

  get getTrabaja => this.trabaja;
  set setTrabaja(trabaja) => this.trabaja = trabaja;

  get getDeporte => this.deporte;
  set setDeporte(deporte) => this.deporte = deporte;

  get getNombreNegocio => this.nombreNegocio;
  set setNombreNegocio(nombreNegocio) => this.nombreNegocio = nombreNegocio;

  get getSexoMasculino => this.sexoMasculino;
  set setSexoMasculino(sexoMasculino) => this.sexoMasculino = sexoMasculino;

  Persona(
    this._edad, {
    required this.num_hijos,
    required this.name,
    required this.sexoMasculino,
    required this.trabaja,
    this.deporte,
  });

  void crear() =>
      print('Me llamo $name, tengo $_edad años y estoy ${sexoMasculino ? 'vivo' : 'viva'} :O');
  void comun() => print('${trabaja! ? 'Trabajo' : 'No trabajo'} y tengo $_edad');

  Persona.atleta(
    this._edad, {
    required this.num_hijos,
    required this.name,
    required this.sexoMasculino,
    required this.trabaja,
    required this.deporte,
  });

  void atleta() => print('Soy $name ${trabaja! ? 'trabajo' : 'no trabajo'} y practico $deporte');

  Persona.emprendedor(
    this._edad, {
      required this.num_hijos,
    required this.name,
    required this.sexoMasculino,
    this.trabaja,
    required this.nombreNegocio,
  });

  void emprendedor() => print(
    'Soy $name y soy ${sexoMasculino ? 'emprendedor' : 'emprendedora'}, mi negocio se llama $nombreNegocio',
  );

  // // setter que nos permitirá modificar el valor de la variable edad. Lo que hace es tomar un entero edad y lo iguala con la variable privada _edad
  // set edadSet(int edad) {
  //   _edad = edad;
  // }

  // // getter que nos permite acceder a la variable que hemos modificado con el setter
  // int edadGet() => _edad;

  void permisoConducir() {
    if (_edad < 18) {
      print('$name no puede conducir, es menor de edad');
    } else {
      print('$name puede conducir :D');
    }
  }
}
