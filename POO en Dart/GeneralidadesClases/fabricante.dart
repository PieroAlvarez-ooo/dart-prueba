class Fabricante {
  String nombreEncargado;
  String empresaAutos;
  double precioVenta;
  double precioCompra;

  Fabricante({
    required this.empresaAutos,
    required this.nombreEncargado,
    required this.precioCompra,
    required this.precioVenta,
  });
}

class Toyota extends Fabricante {
  String dinero;

  Toyota({
    required super.empresaAutos,
    required super.nombreEncargado,
    required super.precioCompra,
    required super.precioVenta,
    required this.dinero,
  });
}

class Honda extends Fabricante {
  String viaje;

  Honda({
    required super.empresaAutos,
    required super.nombreEncargado,
    required super.precioCompra,
    required super.precioVenta,
    required this.viaje,
  });
}
