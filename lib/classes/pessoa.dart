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

  double imcResultado(double peso, double altura) {
    var imc = peso/(altura*altura);
    return imc;
  }

  chamarClassificacao(double peso, double altura) {
    var imc = peso/(altura*altura);
    String resultadoClassificacao;
    
    switch (imc) {
      case < 16: 
        resultadoClassificacao = "MAGREZA SEVERA";
        break;
      case 16 || < 17:
        resultadoClassificacao = "MAGREZA MODERADA";
        break;
      case 17 || < 18.5:
        resultadoClassificacao = "MAGREZA LEVE";
        break;
      case 18.5 || < 25:
        resultadoClassificacao = "SAUDAVEL";
      case 25 || < 30:
        resultadoClassificacao = "SOBREPESO";
      case 30 || < 35:
        resultadoClassificacao = "OBESIDADE GRAU I";
      case 35 || < 40:
        resultadoClassificacao = "OBESIDADE GRAU II (SEVERA)";
      case >= 40:
        resultadoClassificacao = "OBESIDADE GRAU III (MORBIDA)";
      default: resultadoClassificacao = "CLASSIFICACAO INVALIDA!";
    } return resultadoClassificacao;
  } 

// recebe o imc e retorna o seu valor
// fazer o valor recebido ser em decimal
  /*double imcResultado(){
    double pesoFinal = _peso.first;
    double alturaFinal = _altura.first;
    double imc = pesoFinal / (alturaFinal*alturaFinal);
    return imc.isNaN ? 0 : imc;
  }*/

  
}
