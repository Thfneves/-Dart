import 'dart:math';

/*
9) Escreva um programa leia uma quantidade de tempo dada em horas, minutos e segundos e converta para um número equivalente em segundos.
10) Uma firma contrata um encanador a R$ 20,00 por dia. Escreva um programa que leia o número de dias trabalhados pelo encanador e imprima a quantia líquida que deverá ser paga, sabendo-se que são descontados 8% para o imposto de renda.
11) Uma companhia telefônica opera com a seguinte tarifa: uma chamada telefônica com duração de 3 minutos custa R$ 1,15. Cada minuto adicional custa R$ 0,26. Escreva um programa que leia a duração total de uma chamada (em minutos) e calcule o total a ser pago.
12) Em uma empresa os funcionários renovam o contrato por três anos. O salário sofrerá um reajuste de 7%, 6% e 5%, respectivamente, nos próximos três anos. Escreva um programa que leia o salário mensal atual do funcionário, e então, imprima o salário mensal para cada um dos três próximos anos.
13) Faça um programa que peça ao usuário a quilometragem atual, a quilometragem anterior, a quantidade de litros consumida e informe a taxa de consumo (quilômetros por hora) de um automóvel.
14) Faça um programa que peça ao usuário os tamanhos dos catetos de um triângulo retângulo e mostre na tela o valor de sua hipotenusa.

15) No país de Brasilândia a moeda nacional é a merreca (M$). Sabe-se que sistema monetário de Brasilândia só utiliza moedas, não utiliza cédulas, e que os valores dos diferentes tipos de moeda são os seguintes:
Valor (M$) Descrição
    1,00    |   Moeda de uma merreca
    5,00    |   Moeda de cinco merrecas
    10,00   |   Moeda de dez merrecas
    50,00   |   Moeda de cinqüenta merrecas
    100,00  |   Moeda de cem merrecas
*/
import 'dart:ffi';

void main() {
 Random random = Random();
/*1*/
int calculaODobro = 30 ;
leECalculaDobro(calculaODobro);
/*2*/
double somaNum1 = 25.3;
double somaNum2 = 30.7;
somapontoflutuante(somaNum1, somaNum2);

/*3*/
int quadradoNum = random.nextInt(50);
quadradoLido(quadradoNum);

/*4*/
List<double> quartoexercicio = [10.3,09.3,12.6];
 int contar = quartoexercicio.length;
 exercicio4(quartoexercicio[0], quartoexercicio[1], quartoexercicio[2], contar);
 /*4*/

}

/*1)programa que lê um determinado valor positivo e calcula seu dobro.*/
void leECalculaDobro(int calculaODobro){
int result = calculaODobro + calculaODobro;

print("exercicio 1- o dobro de $calculaODobro é $result");
}

/*2) Escreva um programa que leia dois números em ponto flutuante e imprima a soma desses números.*/
void somapontoflutuante(double somaNum1, double somaNum2 ){
double result = somaNum1 + somaNum2 ;
print("exercicio 2- o resultado da soma do $somaNum1 e $somaNum2 = $result");

}

/*3) Escreva um programa que leia um inteiro, calcule e imprima o quadrado no número lido.*/

quadradoLido(int numQuadrado){

int result = numQuadrado * numQuadrado;
print("exercicio 3- o quadrado de $numQuadrado é igual a $result");

}

/*4) Escreva um programa que leia três números em ponto flutuante e imprima a média aritmética entre eles. */
exercicio4(double num1, double num2, double num3, int contar){
int contagem = contar;
double result = ((num1 + num2 + num3) / contagem );
print("exercicio 4- a media dos $num1, $num2, $num3 é de $result");
}

