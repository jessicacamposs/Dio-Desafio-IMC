import 'package:imc/exceptions/nome_invalido_exceptions.dart';
import 'package:test/test.dart';
import 'package:imc/imc.dart' as imc;
import 'package:imc/classes/pessoa.dart' as pessoa;

void main() {
  test('throw NomeInvalidoException error', () {
    // Use uma função anônima para testar se a exceção é lançada
    expect(() => throw NomeInvalidoException(), throwsA(isA<NomeInvalidoException>()));
  });
}
