import 'dart:ffi';

// class Pessoa
class Pessoa {
  String _nome = "";
  List<double> _peso = [];
  List<double> _altura = [];

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

  void addPeso(double altura) {
    _altura.add(altura);  // only works for lists
  }

  void addAltura(double peso) {
    _peso.add(peso);  // only works for lists
  }

// recebe o imc e retorna o seu valor
// fazer o valor recebido ser em decimal
 /* double imcResultado(){
    double pesoFinal = _peso.first;
    double alturaFinal = _altura.first;
    double imc = pesoFinal / (alturaFinal*alturaFinal);
    return imc.isNaN ? 0 : imc;
  }*/
}
