// Creamos una excepción personalza

class ExceptionClientes implements FormatException {
  int _sourcePassword;

  int getSourcePassword() => _sourcePassword;
  set setSourcePassword(int sourcePassword) => _sourcePassword = sourcePassword;

  ExceptionClientes(this._sourcePassword);

  @override
  String get message => 'La contraseña debe tener mínimo 5 caracteres';

  @override
  int? get offset => 5 - _sourcePassword;

  @override
  get source => _sourcePassword;
}
