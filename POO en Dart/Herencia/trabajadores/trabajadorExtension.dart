import 'trabajadores.dart';
export 'trabajadores.dart';

extension TrabajadorExtension on Trabajador {
  double convertirSolesToPesosMx() {
    return salario / 5;
  }
}
