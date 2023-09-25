import 'dart:ffi';

// class Pessoa
class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(this._nome); // construtor
  
  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() { 
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() { 
    return _altura;
  }

// recebe o imc e retorna o seu valor
// fazer receber o input de peso e altura
  double imcResultado(){
    var imc = _peso / (_altura*_altura);
    return imc;
  }
}
