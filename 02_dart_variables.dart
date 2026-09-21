void main() {
  final String name = 'Piero';
  final int age = 19;
  final String lastName = 'Álvarez';
  final bool hambre = true;
  final double tall = 1.75;
  final List<String> clothes = ['Polo', 'Pantalon', 'Chompa'];

  // dynamic == null | tenemos que usasr dynamic con cuidado, pues no genera restricciones en el tipo de variable si no se usa correctamente

  dynamic tinaco = "HOla";
  tinaco = 1;
  tinaco = false;
  tinaco = {1, 2, 3, 4, 5, 7};
  tinaco += 1;

  print("""
  ${name}
  ${lastName}
  ${age}
  ${tall}
  ${hambre}
  ${clothes}
  ${tinaco}
  
  """);
}
