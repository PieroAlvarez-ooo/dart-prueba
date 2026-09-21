import 'habilidades.dart';

class Personas with Profesion {
  String _name;
  int _phone;
  int _age;
  String _genero;

  String getName() => _name;
  set setName(String name) => _name = name;

  int getPhone() => _phone;
  set setPhone(int phone) => _phone = phone;

  int getAage() => _age;
  set setAge(int age) => _age = age;

  String getGenero() => _genero;
  set setGenero(String genero) => _genero = genero;

  Personas(this._name, this._genero, this._age, this._phone);

  String crear() => 'Me llamo ${_name} y estoy vivo :O';
}
