import 'dart:ffi';

// class Pessoa
class Pessoa {
  String _nome = "";
  List <double> _peso = [];
  List <double> _altura = [];

  Pessoa(this._nome); // construtor
  
  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getPeso() { 
    return _peso;
  }

  List<double> getAltura() { 
    return _altura;
  }

  void addPeso(double peso) {
    _peso.add(peso);
  }

  void addAltura(double altura) {
    _altura.add(altura);
  }

// recebe o imc e retorna o seu valor
  double imcResultado(){
    var imc = _peso / (_altura*_altura);
    return imc;
  }
}
