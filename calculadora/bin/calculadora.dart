import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];
  String? entrada = "";

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
      case "-":
        subtracao();
      case "/":
        divisao();
    }
  }

  void getOperacao() {
    print("Digite uma operacao");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada!)) {
        operacao = entrada!;
      } else{
      print("Operação invalida");
      getOperacao();
      }

    }
  }

  print("Digite o primeiro valor");

  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }
  getOperacao();

  print("Digite o segundo valor valor");
  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  calcular();
}
