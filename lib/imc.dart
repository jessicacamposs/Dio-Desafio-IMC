  import 'dart:io';

import 'package:imc/classes/pessoa_abstract.dart';
import 'package:imc/exceptions/nome_invalido_exceptions.dart';
import 'package:imc/utilities/console_utils.dart';

void executar () {
   print("BEM-VINDO(A) A CALCULADORA DE IMC! ");

String nome = ConsoleUtils.lerStringComTexto("DIGITE SEU NOME: ");

try {
  if(nome.trim() == "") {
    throw NomeInvalidoException(); // erro caso nome esteja vazio
  }
} 
  on NomeInvalidoException {
    print(NomeInvalidoException);
    exit(0);
  }
catch (e) {
  print(e);
  exit(0);
}

var pessoa = Pessoa(nome); // variavel aluno criada para chamar o construtor Aluno da class Aluno e receber o String nome digitado pelo usuario
double? imc;
double? peso;
double altura;

do {
  imc = ConsoleUtils.lerDoubleComTexto("INFORME SEU PESO: ");
  if (imc != null) {
    // add peso to imc
    pessoa.addAltura(altura);
  }
} while (peso != null);
  }