import 'clientes.dart';
import 'personas.dart';
import 'trabajadores/trabajadorExtension.dart';

void main() {
  Personas tilin = new Personas('Tilin', 'Masculino', 14, 920103846);
  print(tilin.runtimeType);

  Clientes pedro = new Clientes(
    'Pedro',
    'Masculino',
    15,
    912315235,
    'PedromasNA',
    'wawewiwowu12345',
  );

  pedro.setPassword = 'nuevaContraseñaPedro';
  print(pedro.nameUser);
  print(pedro.getPassword());

  Trabajador pepito = new Trabajador(
    'Pepito',
    'Masculino',
    19,
    920103846,
    1050.50,
  );

  pedro.caminar();
  pepito.caminar();

  print(pepito.crear());
  pedro.profesion = 'arquitecto';
  print(pedro.habilidades(['comer', 'jugar', 'dormir']));

  print(pedro.profesion);

  print(
    'El salario de pepito es ${pepito.salario} en soles, en dolares sería ${pepito.convertirSolesToPesosMx().toStringAsFixed(3)}',
  );
}
