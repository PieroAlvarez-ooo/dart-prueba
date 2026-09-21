import 'exceptionClientes.dart';
import 'paseante.dart';
import 'personas.dart';

class Clientes extends Personas implements Andar {
  String nameUser;
  String _password;

  String getPassword() => _password;
  set setPassword(String password) {
    if (password.length < 5) {
      throw ExceptionClientes(password.length);
    } else {
      password = _password;
    }
  }

  Clientes(
    String _name,
    String _genero,
    int _age,
    int _phone,
    String nameUser,
    String password,
  ) : this._password = password,
      this.nameUser = nameUser,
      super(_name, _genero, _age, _phone) {
    this.nameUser = nameUser;
    this._password = _password;
  }

  @override
  void caminar() {
    print('${getName()} está caminando feliz y coreando :D');
  }

  // // O también podemos escribirlo como:
  // Clientes.secondMethod(
  //   String name,
  //   String genero,
  //   int age,
  //   int phone,
  //   this.nameUser,
  //   this.password,
  // ):super(name,genero,age,phone);
}
