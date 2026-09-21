void main() {
  final Persona persona1 = new Persona(name: 'Piero');

  print(persona1);
  print(persona1.name);
  print(persona1.age);

  final persona2 = new Persona(name: 'Daniel', age: 20);

  print(persona2);
  print(persona2.name);
  print(persona2.age);
}

class Persona {
  // Definimos los atributos
  String name;
  int age;

  // Definimos los métodos, este primero es el constructor (se encarga de crear la instancia de la clase)

  // Constructor con parámetros obligatorios
  // Persona(this.name, this.age);

  // Para hacer los parámetros opcionales
  Persona({required this.name, this.age = 18});

  //   Persona(String pName, int pAge )
  //     : this.name=pName,
  //       this.age=pAge;

  // Podemos sobre escribir los métodos, pero se debe indicar con un @override
  @override
  String toString() {
    return '$name - $age';
  }
}
