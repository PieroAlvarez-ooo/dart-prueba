import '12_clases.dart';

void main() {
  Persona persona1 = new Persona(
    19,
    name: 'Piero',
    trabaja: false,
    sexoMasculino: true,
  );
  persona1.crear();
  persona1.comun();
  // // Modificamos el valor de la variable edad con el método edadSet
  // persona1.edadSet = 20;
  // // Accedemos a esa modificación con el método edadGet()
  // print('La edad de ${persona1.name} es ${persona1.edadGet()}.');

  // Aplicando los getter y setters que nos ofreció el paquete instalado
  persona1.setEdad = 20;
  print('${persona1.name} tiene ${persona1.getEdad} años.');

  Persona persona2 = new Persona.atleta(
    19,
    name: 'Mayumy',
    trabaja: true,
    deporte: 'voley',
    sexoMasculino: false,
  );
  persona2.crear();
  persona2.atleta();
  persona2.comun();
  persona2.permisoConducir();

  Persona persona3 = new Persona.emprendedor(
    20,
    name: 'Daniel',
    sexoMasculino: true,
    trabaja: true,
    nombreNegocio: 'Tostitos',
  );
  persona3.setEdad = 15;
  print('${persona3.name} ahora tiene ${persona3.getEdad} años');
  persona3.permisoConducir();
  persona3.crear();
  persona3.comun();

  /// No deberíamos de poder acceder y modificar el atributo de trabaja para persona3
  // persona3.trabaja = false;
  // persona3.comun();
  persona3.emprendedor();
}
