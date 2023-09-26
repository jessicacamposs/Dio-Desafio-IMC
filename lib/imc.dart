import 'dart:io';
import 'package:imc/classes/pessoa.dart';
import 'package:imc/exceptions/valor_invalido_exception.dart';
import 'package:imc/exceptions/nome_invalido_exceptions.dart';
import 'package:imc/utilities/console_utils.dart';

void executar() {
  print("BEM-VINDO(A) A CALCULADORA DE IMC! ");

  String nome = ConsoleUtils.lerStringComTexto("DIGITE SEU NOME: ");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException(); // erro caso nome esteja vazio
    }
  } on NomeInvalidoException {
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double ? peso;
  double ? altura;
  var pessoa = Pessoa(nome);

  print("INFORME SEU PESO: "); // valor recebido do usuario sera uma string
  String pesoTexto = ConsoleUtils.lerStringConsole(); // ler o valor como String

  try {
    peso = double.parse(pesoTexto); // convert o valor recebido por pesoTexto(String) em peso(double)
    pessoa.addPeso(peso);
    if (peso <= 0) {
      throw ValorInvalidoException();
    }
  } on ValorInvalidoException {
    print(ValorInvalidoException);
    exit(0);
  } 
  catch (e) {
    print("Ocorreu um erro: $ValorInvalidoException");
  }

  print("INFORME SUA ALTURA EM DECIMAIS: ");
  String alturaTexto = ConsoleUtils.lerStringConsole();

  try {
    altura = double.parse(alturaTexto);
    pessoa.addAltura(altura); // criar um method para add a altura ao imc
    if (altura <= 0) {
      throw ValorInvalidoException();
    }
  } on ValorInvalidoException {
    print(ValorInvalidoException);
    exit(0);
  } 
  catch (e) {
    print("Ocorreu um erro: $ValorInvalidoException");
  }

  // transformar o input em double automaticamente
  int casasDecimais = 2; // limite de quantas casas decimais deve mostrar
  //double imc = peso!/(altura!*altura!);

  print("O IMC DE ${pessoa.getNome()} E DE: ${pessoa.imcResultado(peso!, altura!).toStringAsFixed(casasDecimais)} E SUA CLASSIFICACAO E: ${pessoa.chamarClassificacao(peso, altura)}");
}
