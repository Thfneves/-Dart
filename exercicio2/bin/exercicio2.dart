
import 'dart:io';

void main() {
  List<String> categoria = [
    "eletronico",
    "moveis",
    "utensilios de cozinha",
    "veiculos",
    "mecanica",
    "esportes",
  ];
  String? newItem = "";

   void addNewCategory() {
    print("Digite uma nova categoria:");
    newItem = stdin.readLineSync();


    if (newItem != null && newItem!.trim().isNotEmpty) {
      String texto = newItem!.trim(); 

      bool ehNumero = int.tryParse(texto) != null || double.tryParse(texto) != null;

      if (ehNumero) {
      
        print("Você não pode adicionar um número como categoria.");
        addNewCategory();
      } else {
        categoria.add(texto);
        print(" Categoria adicionada com sucesso!");
      }
      print("Categorias atuais: $categoria");
      } else {
      print("Você precisa digitar um texto válido.");
      addNewCategory(); 
    }
  }

  addNewCategory();

}
