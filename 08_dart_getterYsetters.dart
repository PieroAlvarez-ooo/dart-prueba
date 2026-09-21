void main() {
  Square cuadrado = new Square(side: 5);

  cuadrado._side = 10;

  print('Area: ${cuadrado.calculateArea()}');
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  double calculateArea() {
    return _side * _side;
  }
}
