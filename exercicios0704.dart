import 'dart:io';
import 'dart:math';

main() {
  //exercicio 1
  print('Insira um número:');
  var num1 = stdin.readLineSync()!;

  print('Insira outro número:');
  var num2 = stdin.readLineSync()!;

  if (int.parse(num1) > int.parse(num2)) {
    print('O maior número é: $num1\n');
  } else if (int.parse(num2) > int.parse(num1)) {
    print('O maior número é: $num2\n');
  }

  //exercicio 2
  print('Insira um número:');
  var num3 = stdin.readLineSync()!;

  print('Insira um número:');
  var num4 = stdin.readLineSync()!;

  if (int.parse(num3) == int.parse(num4)) {
    print("Os números são iguais!\n");
  } else if (int.parse(num3) > int.parse(num4)) {
    print('$num3 é maior e $num4 é menor.\n');
  } else {
    print('$num4 é maior e $num3 é menor.\n');
  }

  //exercicio 3

  print('Insira um número:');
  var num5 = stdin.readLineSync()!;

  if (int.parse(num5) % 2 == 0) {
    print('O número $num5 é par.\n');
  } else {
    print('O número $num5 é ímpar.\n');
  }

  if (int.parse(num5) > 0) {
    print('O número $num5 é positivo.\n');
  } else {
    print('O número $num5 é negativo.\n');
  }

  //exercicio 4

  print('Insira um número:');
  var num6 = stdin.readLineSync()!;
  print('Insira outro número:');
  var num7 = stdin.readLineSync()!;
  print('Insira mais um número:');
  var num8 = stdin.readLineSync()!;
  int menor, meio, maior;
  if (int.parse(num6) <= int.parse(num7) &&
      int.parse(num7) <= int.parse(num8)) {
    menor = int.parse(num6);
    if (int.parse(num7) <= int.parse(num8)) {
      meio = int.parse(num7);
      maior = int.parse(num8);
    } else {
      meio = int.parse(num8);
      maior = int.parse(num7);
    }
  } else if (int.parse(num7) <= int.parse(num6) &&
      int.parse(num7) <= int.parse(num8)) {
    menor = int.parse(num7);
    if (int.parse(num6) <= int.parse(num8)) {
      meio = int.parse(num6);
      maior = int.parse(num8);
    } else {
      meio = int.parse(num8);
      maior = int.parse(num6);
    }
  } else {
    menor = int.parse(num8);
    if (int.parse(num6) <= int.parse(num7)) {
      meio = int.parse(num6);
      maior = int.parse(num7);
    } else {
      meio = int.parse(num7);
      maior = int.parse(num6);
    }
  }
  print('Os números em ordem crescente são: $menor, $meio, $maior\n');

  //exercicio 5
  print('Insira a quantia de dinheiro que você sobrando: ');
  var dinheiro = stdin.readLineSync()!;

  if (int.parse(dinheiro) > 10) {
    print('Vá assistir um filme no cinema.\n');
  } else {
    print('Prefira assistir um filme de casa hoje.\n');
  }

  //exercicio 6

  print('Insira um número: ');
  var num9 = stdin.readLineSync()!;

  if (int.parse(num9) % 7 == 0) {
    print('O número $num9 é múltiplo de 7\n');
  } else {
    print('O número $num9 não é múltiplo de 7 \n');
  }

  //exercicio 7
  print('Insira um número: ');
  var num10 = stdin.readLineSync()!;

  if (int.parse(num10) % 3 == 0 && int.parse(num10) % 2 == 0) {
    print('O número $num10 é divisível de 3 e par.\n');
  } else if (int.parse(num10) % 3 == 0 && int.parse(num10) % 2 != 0) {
    print('O número $num10 é apenas divisível de 3.\n');
  } else if (int.parse(num10) % 3 != 0 && int.parse(num10) % 2 == 0) {
    print('O número $num10 é apenas par.\n');
  } else if (int.parse(num10) % 3 != 0 && int.parse(num10) % 2 != 0) {
    print('O número $num10 não é divisível de 3 nem par.\n');
  }

  //Exercicio 8

  print('Insira um número: ');
  var num11 = stdin.readLineSync()!;
  print('Insira outro número: ');
  var num12 = stdin.readLineSync()!;
  print('Insira outro número: ');
  var num13 = stdin.readLineSync()!;

  if (int.parse(num11) > int.parse(num12) &&
      int.parse(num11) > int.parse(num13)) {
    print('O número $num11 é maior.');
  }
  if (int.parse(num12) > int.parse(num11) &&
      int.parse(num12) > int.parse(num13)) {
    print('O número $num12 é maior.');
  }
  if (int.parse(num13) > int.parse(num12) &&
      int.parse(num13) > int.parse(num11)) {
    print('O número $num13 é maior.');
  }

  //exercicio 9

  print(
    'Insira a cor do sinal: V para verde, A para amarelo e P para vermelho: ',
  );
  var cor = stdin.readLineSync()!;

  if (cor == 'V') {
    print('Siga.\n');
  } else if (cor == 'A') {
    print('Atenção.\n');
  } else if (cor == 'P') {
    print('Pare.\n');
  } else {
    print('Cor inválida.\n');
  }

  //exercicio 10
  print('Insira a velocidade do motorista: ');
  var velocidade = stdin.readLineSync()!;

  if (double.parse(velocidade) > 120) {
    print('MULTADO.\n');
  } else {
    print('Dentro do limite.\n');
  }

  //exercicio 11
  print('Insira um número: ');
  var num14 = stdin.readLineSync()!;

  if (int.parse(num14) >= 50 && int.parse(num14) <= 100) {
    print('Guichê A.\n');
  } else if (int.parse(num14) >= 25 && int.parse(num14) <= 49) {
    print('Guichê B.\n');
  } else if (int.parse(num14) >= 10 && int.parse(num14) <= 24) {
    print('Guichê C.\n');
  } else {
    print('Guichê D ou E.\n');
  }

  //exercicio 12

  print('---------SALGADOS---------\n');
  print('101 - Coxinha - R\$4,50');
  print('102 - Joelho  - R\$5,50');
  print('103 - Pizza - R\$6,00');

  print('---------BEBIDAS---------\n');
  print('101 - Água - R\$3,00');
  print('102 - Refrigerante  - R\$4,50');
  print('103 - Suco - R\$5,50');

  print('Insira a quantidade de salgados: ');
  var qntSalgados = stdin.readLineSync()!;
  print('Insira o código do salgado: ');
  var codSalgado = stdin.readLineSync()!;

  double totalSalgado = 0.0;
  double totalBebida = 0.0;

  if(codSalgado == '101'){
    totalSalgado = double.parse(qntSalgados) * 4.50;
  }
  else if(codSalgado == '102'){
     totalSalgado = double.parse(qntSalgados) * 5.50;
  }
  else{
     totalSalgado = double.parse(qntSalgados) * 6.00;
  }
  totalSalgado = double.parse(totalSalgado.toStringAsFixed(2));

  print('Insira a quantidade de bebidas: ');
  var qntBebidas = stdin.readLineSync()!;
  print('Insira o código da bebida: ');
  var codBebida = stdin.readLineSync()!;

  if(codBebida == '101') {
     totalBebida = double.parse(qntBebidas) * 3.00;
  } 
  else if (codBebida == '102') {
     totalBebida = double.parse(qntBebidas) * 4.50;
  }
   else {
      totalBebida = double.parse(qntBebidas) * 5.50;
  }
  totalBebida = double.parse(totalBebida.toStringAsFixed(2));

  double total = totalSalgado + totalBebida;
  total = double.parse(total.toStringAsFixed(2));
  if(total > 100){
    double desconto = total * 0.10;
    desconto = double.parse(desconto.toStringAsFixed(2));
    double totalDesc = total - desconto;
    totalDesc = double.parse(totalDesc.toStringAsFixed(2));

    print('O total da sua compra é: R\$${totalDesc}');
  }
}
