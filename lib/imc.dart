import 'dart:io';

import 'package:imc/classes/pessoa_abstract.dart';
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

  var pessoa = Pessoa(
      nome); // variavel aluno criada para chamar o construtor Aluno da class Aluno e receber o String nome digitado pelo usuario
  double ? peso;
  double ? altura;

  print("INFORME SEU PESO: "); // valor recebido do usuario sera uma string
  String pesoTexto = ConsoleUtils.lerStringConsole(); // ler o valor como String

  try {
    peso = double.parse(pesoTexto); // convert o valor recebido por pesoTexto(String) em peso(double)
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

  print("INFORME SUA ALTURA: ");
  String alturaTexto = ConsoleUtils.lerStringConsole();

  try {
    altura = double.parse(alturaTexto);
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

  print("SEU IMC E DE: $imc E SUA CLASSIFICACAO E DE: $classificacao");
}
