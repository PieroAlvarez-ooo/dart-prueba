void main() {
  final Map<String, dynamic> persona = {
    'name': 'Piero',
    'lastName': 'Álvarez',
    'age': 19,
    'hambre': true,
    'tall': 1.75,
    'images': <int, String>{1: 'piero/front.png', 2: 'piero/back.png'},
  };

  print(persona);
  print('Name: ${persona['name']}');

  print('Images: ${persona['images']}');
  print('Front: ${persona['images'][1]}');
  print('Back: ${persona['images'][2]}');
}

// Es mejor usar dynamic en ves de Objetc así nos ahorramos problemas, pues dynamic es como: el valor toma el valor que sea, mientras que Object es un tipo de dato en sí mismo y puede generar problemas al querer usarlo como otro tipo de datos, ya que debemos igual definirlo. 

// En dart existen las listas, mapas, sets, iterables (que lo veo como las tuplas de python).