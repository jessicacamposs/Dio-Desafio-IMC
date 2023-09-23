import 'dart:convert';
import 'dart:io'; // dart input/output

class ConsoleUtils {
  static String lerStringComTexto(String nome) {
    print(nome);
    return lerStringConsole();
  }

  static String lerStringConsole() {
    return stdin.readLineSync(encoding: utf8) ??
        ""; // retorna a leitura do input String do usuario
  }

  static double? lerDouble() {
    var valor = lerStringConsole();
  }

  static double? lerDoubleComTexto(String nome) {
    print(nome);
    return lerDouble();
  }
}
