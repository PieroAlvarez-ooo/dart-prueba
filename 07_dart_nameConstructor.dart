void main() {
  final Map<String, dynamic> perroCallejero = {
    'name': 'Julian',
    'age': 2,
    'color': 'canela',
    'agresivo': true,
  };

  final perro2 = new Perro.callejero(perroCallejero);

  print(perro2);

  final perro1 = new Perro(
    name: 'Pepe',
    age: 2,
    color: 'amarillo',
    agresivo: false,
  );
  print(perro1);
}

class Perro {
  String name;
  int age;
  String color;
  bool agresivo;

  Perro({
    required this.name,
    required this.age,
    required this.color,
    required this.agresivo,
  });

  Perro.callejero(Map<String, dynamic> perroMap)
    : name = perroMap['name'],
      age = perroMap['age'],
      color = perroMap['color'],
      agresivo = perroMap['agresivo'];

  // Vamos a sobreescribir el método toString que hace que la instancia de la clase se imprima como tal
  @override
  String toString() =>
      'El perro $name tiene $age años, es de color $color y ${agresivo ? 'es agresivo' : 'no es agresivo'}.';
}
