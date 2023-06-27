import 'models/pessoa.dart';
import 'models/utils.dart';

void executeImc() {
  print("Bem vindo a calculadora de IMC");

  String nome = ConsoleUtils.lerStringcomTexto("Digite o nome da pessoa");

  double peso = ConsoleUtils.lerDoublecomTexto("digite o peso") ?? 0;

  double altura = ConsoleUtils.lerDoublecomTexto("digite a altura") ?? 0;

  var pessoa = Pessoa(nome, peso, altura);

  print(
      "o nome da pessoa é ${pessoa.getNome()}, pesa ${pessoa.getPeso()} KG, mede ${pessoa.getAltura()} metros de altura e seu imc é de ${pessoa.getImc()} com classificação de");

  if (pessoa.getImc() < 16) {
    print("magreza grave");
  } else if (pessoa.getImc() < 17) {
    print("Magreza moderada");
  } else if (pessoa.getImc() < 18.5) {
    print("Magreza leve");
  } else if (pessoa.getImc() < 25) {
    print("Saudável");
  } else if (pessoa.getImc() < 30) {
    print("Sobrepeso");
  } else if (pessoa.getImc() < 35) {
    print("Obesidade grau 1");
  } else if (pessoa.getImc() < 40) {
    print("Obesidade grau 2 (severa)");
  } else if (pessoa.getImc() >= 40) {
    print("Obesidade grau 3 (mórbida)");
  }
}
