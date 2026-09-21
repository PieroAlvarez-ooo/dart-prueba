void main() {
  final number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 9, 5, 4, 2];

  print('Numeros: $number');
  print('Index number 3: ${number[2]}');
  print('Length: ${number.length}');
  print('Primero: ${number.first}');
  print('Último: ${number.last}');
  print('Reversed: ${number.reversed}');

  final reversedNumber = number.reversed;
  print('Reversa a lista: ${reversedNumber.toList()}');
  print(
    'Reversa a lista (segúnda alternativa): \n ${(number.reversed).toList()}',
  );

  print('A set: ${number.toSet()}');

  final numberGreaterThan7 = number.where((n) {
    return n > 5;
  });
  print('>5 iterable: ${numberGreaterThan7}');
  print('>5 set: ${numberGreaterThan7.toSet()}');
  print('>5 list: ${(numberGreaterThan7.toSet()).toList()}');
}

// Aquí lo que hicimos fue jugar con algunos métodos de las listas y que si revertimos una lista se convierte en iterable, pero que aplicando otro método lo podemos volver lista. Además, vimos la diferencia entre usar cada una de ellas y la más notable es set, ya que no repite valores a diferencia de las listas que respetan el orden y la repeeción. 

// Otra cosa importante es que vimos sobre la interpolación de cadenas, es decir, que mediante el símbolo de interpolación ${} podemos llamar variables dentro de una línea de cadenas. Aunque se puede usar sin {}, pero es recomendable usarlo siempre.