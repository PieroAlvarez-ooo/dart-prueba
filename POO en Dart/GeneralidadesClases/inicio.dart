import 'autos.dart';
import 'fabricante.dart';

void main() {
  Autos<Toyota> auto1 = new Autos(
    distribudor: Toyota(
      empresaAutos: 'Toyota',
      nombreEncargado: 'Julian',
      precioCompra: 100000,
      precioVenta: 10000000,
      dinero: 'dinerin dinero',
    ),
  );

  print(auto1);

  Autos<Honda> auto2 = new Autos(
    distribudor: Honda(
      empresaAutos: 'Honda',
      nombreEncargado: 'Ete Sech',
      precioCompra: 400000,
      precioVenta: 9000000,
      viaje: 'Tucumán',
    ),
  );

  print(auto2);
}
