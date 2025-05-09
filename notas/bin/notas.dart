import 'dart:io';

void main() {
  List<String> notas = <String>[];

  menu(notas);
}

String getComando() {
  print("Digite um comando: 1- Adcionar nota, 2- Listar notas, 3 - Sair");
  List<String> comandos = <String>['1', '2', '3'];
  String? entrada = "";

  entrada = stdin.readLineSync();
  if (entrada == null || !comandos.contains(entrada)) {
    print('comando invalido');
    getComando();
  }

  return entrada!;
}

List<String> adcionarNota(List<String> notas) {
  String? nota = "";
  print("Escreva uma nota");
  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Nao é possivel adcionar uma nota vazia");
    adcionarNota(notas);
  }
  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas) {
  String comando = getComando();

  switch (comando) {
    case "1":
      adcionarNota(notas);
      menu(notas);

    case "2":
      listarNotas(notas);
      menu(notas);

    case "3":
      print("Até breve");
  }
}
