void main() {
  List<int> miLista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  cuadradoLista(miLista);
  print('Alternativas');
  cuadradoLista_I(miLista);
}

// Alternativa 1
void cuadradoLista(List<int> myList) {
  List myNewList = [];
  myList.forEach((k) {
    myNewList.add(k * k);
  });
  print(myNewList);
}

// Alternativa 2
void cuadradoLista_I(List myList) {
  for (int k = 0; k < myList.length; k++) {
    myList[k] = myList[k] * myList[k];
  }
  print(myList);
}
