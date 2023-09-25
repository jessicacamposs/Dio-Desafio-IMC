class ValorInvalidoException implements Exception {
  String erro() => "VALOR INVALIDO!";

  @override
  String toString() {
    return "ValorInvalidoException: ${erro()}";
  }
}