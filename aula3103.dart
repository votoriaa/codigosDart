import 'dart:io';

void main(){

//exercicio 1

/*
print('Insira um número: ');
var numero1 = stdin.readLineSync()!;
print('Insira outro número: ');
var numero2 = stdin.readLineSync()!;

var soma = int.parse(numero1) + int.parse(numero2);

print("A soma é: $soma");

//exercicio 2

 print('\nInsira um número: ');
 var num1 = stdin.readLineSync()!;

 print("O número digitado foi $num1\n");
 print("Seu sucessor é $num1+1. \n");
 print("Seu antecessor é $num1-1. \n");

//exercicio 3

 print('\nInsira um número: ');
 var numeroo1 = stdin.readLineSync()!;
 print('Insira outro número: ');
 var numeroo2 = stdin.readLineSync()!;

 var media = int.parse(numeroo1) + int.parse(numeroo2) / 2;
 print("A média entre os valores é: $media\n");
*/



 //exercicio 1 

 double gastos;
 var fralda = 1.10;

 gastos = (fralda*4)*30; // 4 fraldas por dia durante 30 dias
 gastos = double.parse(gastos.toStringAsFixed(2));
 print("\nO gasto mensal com fraldas é: R\$ $gastos\n");


  //exercicio 2

  print('Insira um número inteiro: ');
  var number = stdin.readLineSync()!;
  
  double terca = double.parse(number) / 3; // Terceira parte do número
  terca = double.parse(terca.toStringAsFixed(2));

  print('A terceira parte do número $number é: $terca\n');


  //exercicio 3

  print('Insira o seu peso: ');
  var peso = stdin.readLineSync()!;

  var agua = double.parse(peso) * 0.040; // 40ml de água por kg de peso
  agua = double.parse(agua.toStringAsFixed(2));
  print('A quantidade de água que você deve beber por dia é: $agua L\n');


}
