class NomeInvalidoException implements Exception {
  String erro() => "NOME INVALIDO!";

  @override
  String toString() {
    return "NomeInvalidoException: ${erro()}";
  }
}