void main() {
  print(greateEveryone());

  print(addThreeNumbers(1, 2, 3));

  print(addThreeNumbersOptional(1, 2));

  print(messageName(name: 'Piero', message: 'Hi, '));
}

// En todo momento tenemos que definir todo lo que usemos, de lo contrario dart nos pedirá que la definamos, impidiendo que se ejecute el código. Además, el código puede hacer cosas que no queramos simplemente por no haber definido bien nuestras variables

// String greateEveryone(){
//   return 'Hi everyone!';
// }

// Función flecha:
String greateEveryone() => 'Hi everyone!';

int addThreeNumbers(int a, int b, int c) {
  return a + b + c;
}

// // int addThreeNumbers(int a,int b,int c) => a+b+c;

int addThreeNumbersOptional(int a, int c, [int b = 0, int d = 1]) {
  return a + c + b + d;
}

// int addThreeNumbersOptional(int a, int c, [int b=0]) => a+b+c;

// int addThreeNumbersOptional(int a,int c,[int? b]){
//   b=b??0;
//   b??=0
//   return a+c+b;
// }

// Tipos de parámetros con nombre y opcionales:
String messageName({required String name, String message = 'Hola, '}) {
  return '${message + name} ';
}

// Aprendimos a definir funciones, es importante definir las variables con las que trabajará, pues así no hacemos que dart suponga qué variables serán. Vimos cómo podemos hacer parámetros opcionales de diferentes métodos, pero el más sencillo es [var variable = var], también vimos la definición de una función flecha. Otra forma de crear funciones en las que se llame el nombre del parámetro y hacerlas opcionales es usando {} dentro de donde se define los parámetros, esto hace que si queremos que un parámetro sea obligatorio entonces usemos la palabra reservada required. 

// Otra cosa es que tiene que ver con los ímbolos ? y ??. Usamos ? luego de definir la variable, por ejemplo: int? = a, para denotar que a puede ser null, y en ese caso usamos ?? para definir cuál será el valor de a en caso de ser null, por ejemplo a = a ?? 0, lo leeríamos como: a será igual a si es entero, pero si es null, entonces será 0. También podemos crear ternarios algo que lo entiendo como implicaciones, por ejemplo en una variable que devuelve un booleano: Supongamos que firetor es true, entonces: firetore ? 'es verdadero' : 'es falso', lo leeríamos como: si firetore es verdadero, entonces devuelve 'es verdadero', pero si no es verdadero, entonces devuelve 'es falso'.