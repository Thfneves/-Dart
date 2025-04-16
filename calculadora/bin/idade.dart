import 'dart:io';

void main() {
 
 print("Digite sua idade");

 double idade = double.parse(stdin.readLineSync()!);

 if (idade < 18){
 print("voce nao pode dirgir voce tem apenas $idade");
 } else {
 print("Pode seguir sua viagem voce tem $idade e ja é de maior");
 }




}
