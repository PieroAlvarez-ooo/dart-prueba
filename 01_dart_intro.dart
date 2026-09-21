// main() es una función principal que ejecuta el código en la aplicación, sin este no se muestra nada. la palabra antes de main() es void e indica que main no devuelve nada, es decir, le decimos a dart que no espere nada de main() así no nos lo exige o nos marque como que no estamos llamando a la función.
void main() {
  //   var myName="Piero";
  //   String myName="Piero";

  //   final myName="Piero";

  //   late final String myName;
  //   myName = "Piero";

  const myName = "Piero";

  // Hay muchs tipos de datos en Dart, y otros comandos que se anteponen cuando definimos variables. Por ejemplo const y final, que sirven para decir cómo se va a comportar mi variable en caso sea String, int, double, bool, List, Map, Set, dynamic, etc. La diferencia principal entre ambos es que usamos const cuando sabemos que una variable no va a cambiar nunca en el desarrollo del código en cambio final se define y si la queremos alterar saldrá error y así nos evita errores en compilación o ejecución.

  // Usamos late final si tenemos una variable que aún no está como tal definida, pero que luego sí se definirá luego de un proceso.

  print("Hola, ${myName}");
}
