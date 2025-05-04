import 'dart:ffi';

void main() {
  String nome = "Laranja";
  double peso = 100.02;
  String cor = "verde e amarela";
  String sabor = "doce e citrica";
  int diasDesdeColheita = 40;
  bool isMadura;
printAlimento();
  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
 
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("a $nome esta madura");
  } else {
    print("a $nome não esta madura");
  }
  if (cor != null) {
    print("a $nome é $cor");
  }
}

funcdiasmadura(int dias) {
  int diasParaMadura = 30;
  int diasFaltam = dias - diasParaMadura;
}
Legumes mandionca = Legumes("Macaxeira", 1200, "Marrom", true);
Frutas banana1 = Frutas("Banana", 75, "Amarelo", "doce", 20);
Nozes macadamia = Nozes("Macadamia", 2, "Amarelo", "Doce", 22, true, 20);
citricas limao = citricas("Limao", 8, "Verde", "Levemente Amargo", 20, true, 8);



void printAlimento(){
mandionca.printAlimento();
banana1.printAlimento();
macadamia.printAlimento();
limao.printAlimento();

mandionca.cozinha();

banana1.separarIngredientes()
}

class alimento {
  String nome;
  double peso;
  String cor;
  alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este $nome $peso em grama e tem a cor $cor.");
  }
}

class Frutas  extends alimento implements Bolo{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(
    String nome,
    double peso,
    String cor,
    this.sabor,
    this.diasDesdeColheita, {
    this.isMadura,
  }): super(nome,peso,cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
      "A sua $nome ela foi colhida em $diasDesdeColheita e precisa de $diasParaMadura para ficar boa  $isMadura",
    );
  }

void fazerSuco(){
print("fazer Suco de $nome");
}
@override 
void separarIngredientes(){
// separar ingredientes
print("separar ingredientes")
}
@override
void fazerMassa(){
// fazer massa
print("Misturar a fruta com farinha, ovos e leite")
}
@override
void assar(){
//assar
print("colocar no forno")
}
}

class Legumes extends alimento implements Bolo{

  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
    : super(nome, peso, cor);

  void cozinha() {
    if (isPrecisaCozinhar) {
      print("pronto, o $nome esta cozinhando");
    } else {
      print("Nem precisa cozinhar");
    }
  }
  @override
  void assar(){
  //assar
  
  }
  @override
  void fazerMassa(){
  // fazer massa
  }
  @override
  void separarIngredientes(){
  //ver se o alimento esta cozido ou cru
  }
}

class citricas extends Frutas {

  double nivelAzzedo;

  citricas(
     String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    bool isMadura,
    this.nivelAzzedo,
  ): super(nome, peso, cor, sabor, diasDesdeColheita );

  void existeRefri(bool existe){
  if(existe){
  print("Existe Refri de $nome");
  }else{
  print("Não existe refri de $nome");
  }
  }
}

class Nozes extends Frutas {
  double porcentagemOleoNatural;

  Nozes(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    bool isMadura,
    this.porcentagemOleoNatural,
  ): super(nome, peso, cor, sabor, diasDesdeColheita);
}


abstract class Bolo{ // define uma abstrassão;
  // separo os ingredientes
  void separarIngredientes(){
  // Faça algo
  void fazerMassa();

  void assar();
  //faço a massa
  //assar
  } 
}