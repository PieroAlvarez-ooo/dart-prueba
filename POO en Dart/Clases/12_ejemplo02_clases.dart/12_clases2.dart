import '12_clase03.dart';

class Person<GeneralLocation extends Location> {
  String _name;
  int age;
  GeneralLocation address;
  int phone;

  set nameSet(String name) => _name = name;
  get nameGet => _name;

  Person(
    this._name, {
    required this.age,
    required this.address,
    required this.phone,
  });
}
