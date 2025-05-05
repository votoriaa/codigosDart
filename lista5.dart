import 'dart:io';
import 'dart:math';

//exercicio 1
int menorValor(int num1, int num2) {
  return (num1 < num2) ? num1 : num2; //se num1 for menor, retorna o valor de num1, senão retorna o valor de num2
}void main() {
  print('Digite o primeiro número: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Digite o segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Menor valor: ${menorValor(num1, num2)}');

//exercicio 2
void somatorio(int num) {
  int soma = 0;
  for (int i = 1; i <= num; i++) {
    soma = soma+i;
  }
  print('Somatório de 1 até $num é: $soma');
}
  print('Digite um número: ');
  int num = int.parse(stdin.readLineSync()!);
  somatorio(num);

//exercicio 3
void calcular (int x, int y, int z){
   int calculo = (x*x)+y+z;
   print("O resultado do cálculo é: $calculo");
}
  print('Digite o primeiro número: ');
  int x = int.parse(stdin.readLineSync()!);
  print('Digite o segundo número: ');
  int y = int.parse(stdin.readLineSync()!);
  print('Digite o terceiro número: ');
  int z = int.parse(stdin.readLineSync()!);
  calcular(x, y, z);

  //exercicio 4
void percentualAumento(double valAntigo, double valAtual) {
  double aumento = ((valAtual - valAntigo) / valAntigo) * 100;
  print('Percentual de acréscimo: ${aumento.toStringAsFixed(2)}%');
}
  print('Digite o valor antigo: ');
  double antigo = double.parse(stdin.readLineSync()!);
  print('Digite o valor atual: ');
  double atual = double.parse(stdin.readLineSync()!);
  percentualAumento(antigo, atual);

  //exercicio 5

  void bissexto(int ano){

    if ((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)) {
      print('$ano é um ano bissexto.');
    } else {
      print('$ano não é um ano bissexto.');
    }

  }
  print('Digite um ano: ');
  int ano = int.parse(stdin.readLineSync()!);
  bissexto(ano);

  //exercicio 6
  void tabuada(int num){

    while (num != 0) {
      print('Tabuada do $num:');
      for (int i = 1; i <= 10; i++) {
        print('$num x $i = ${num * i}');
      }
      print('Digite outro número (ou 0 para sair): ');
      num = int.parse(stdin.readLineSync()!);
    }}

    print("Escolha um número para ver a tabuada (ou 0 para sair): ");
    int numTabuada = int.parse(stdin.readLineSync()!);
    tabuada(numTabuada);

//exercicio 7
void multiplosDe3(int multiplo) {
  int c = 0;
  int atual = multiplo;
  while (c < 10) {
    if (atual % 3 == 0) {
      print(atual);
      c++;
    }
    atual++;
  }
}
void main() {
  print('Digite o valor de K: ');
  int multiplo = int.parse(stdin.readLineSync()!);
  multiplosDe3(multiplo);
}

//exercicio 8

void somaSerie(int serie) {
  double soma = 0;
  for (int i = 1; i <= serie; i++) {
    soma += 1 / (2 * i);
  }
  print('Soma da série: ${soma.toStringAsFixed(4)}');
}
  print('Digite um valor de base: ');
  int serie = int.parse(stdin.readLineSync()!);
  somaSerie(serie);
}
  



