void main() {
  int a = 20;
  int b = 0;

  void div(int a, int b) {
    if (b == 0) {
      throw new FormatException('WAAAA');
    }
    print('La división esss: ${a ~/ b}');
  }

  div(a, b);
}
