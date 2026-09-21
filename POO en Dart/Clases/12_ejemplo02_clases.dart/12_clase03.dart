class Location {
  String _departamento;
  String _provincia;
  String _distrito;
  String _calle;
  int _numPuerta;

  get getDepartamento => _departamento;
  set setDepartamento(String departamento) => _departamento = departamento;

  get provincia => this._provincia;
  set provincia(String provincia) => this._provincia = provincia;

  get distrito => this._distrito;
  set distrito(String distrito) => this._distrito = distrito;

  get calle => this._calle;
  set calle(String calle) => this._calle = calle;

  get numPuerta => this._numPuerta;
  set numPuerta(int numPuerta) => this._numPuerta = numPuerta;

  Location(
    this._departamento,
    this._provincia,
    this._distrito,
    this._calle,
    this._numPuerta,
  );
}
