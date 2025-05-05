import 'dart:io';
import 'dart:math';

main(){
/*
  //exercicio 1

  int maior = 0;
  int menor = 0;

  for (int i=1; i<4; i++) {
    print('Digite a idade $i:');
    int idade = int.parse(stdin.readLineSync()!);
    if (i == 1) {
      maior = idade;
      menor = idade;
    } 
    else {
      if (idade > maior) {
        maior = idade;
      }
      if (idade < menor) {
        menor = idade;
      }
    }
  }
  print('Maior idade: $maior');
  print('Menor idade: $menor');
*/

/*
  //exercicio 2

  int maiorNum = 0;
  for(int i=1; i<=5; i++){
    print("Digite o $i número:");
    int num = int.parse(stdin.readLineSync()!);
    if(i == 1){
      maiorNum = num;
  }
    else if(num > maiorNum){
      maiorNum = num;
    }
  }
  print("O maior número é: $maiorNum");
*/

/*
  //exercicio 3

  int soma = 0;
  for(int i=1; i<=5; i++){
    print("Digite o $i número:");
    int num = int.parse(stdin.readLineSync()!);
    soma = soma + num;//soma é uma variável acumulativa
  }
  double media = soma / 5;
  print("A média é: $media");
*/

/*
  //exercicio 4

  int contador = 0;
  int numeroPar= 0;

  while (contador < 20){
   
    print('$numeroPar');
    numeroPar = numeroPar + 2;
    contador = contador + 1;
    }
*/

/*
  //exercicio 5

  int contador = 1;
  
  while(contador <20){
    if(contador % 2 != 0){
      print('$contador');
    }
    contador = contador + 1;
    
  }
*/

/*
  //exercicio 6

  print("insira um número");
   int num1 = int.parse(stdin.readLineSync()!);
  print("insira um outro número");
   int num2 = int.parse(stdin.readLineSync()!);
  print('\n');

   int maior;
   int menor;

   if(num1 > num2){
    maior = num1;
    menor = num2;
   }
   else{
    maior= num2;
    menor = num1;
   }
 
    for(int contador = menor; contador <= maior; contador++){
      print("$contador");
    }
*/

/*
    //exercicio 7
    int ContImpar=0;
    int ContPar=0;;

    for (int i= 1; i<=10; i++){
      print("Insira um número:");
      var numParImpar = int.parse(stdin.readLineSync()!);
      if(numParImpar % 2 == 0){
        ContPar= ContPar+1;
      }
      else{
        ContImpar= ContImpar+1;
      }
      
    }
    print("A quantidade de números pares é: $ContPar\n e a quantidade de ímpares é $ContImpar\n");
*/

/*
    //exercicio 8
    print("Insira um número inteiro:");
    int num = int.parse(stdin.readLineSync()!);

    int fatorial = 1;
    for (int i = 1; i <= num; i++) {
      fatorial = fatorial*i; // fatorial = fatorial * i
    }
    print("$num ! = $fatorial");
*/

/*
    //exercicio 9
    print('Digite um número inteiro:');
    int numero = int.parse(stdin.readLineSync()!);
    int qDiv = 0;
    for (int i = 1; i <= numero; i++) {
      if (numero % i == 0) {
        qDiv = qDiv + 1;
      }
    }
      if (qDiv == 2) {//numero primo tem apenas 2 divisores, se for 1 ou mais não é
        print('$numero é um número primo.');
      } 
    else {
    print('$numero não é um número primo.');
    }
*/

/*
    //exercicio 10
    print('Digite um número positivo:');
    int num = int.parse(stdin.readLineSync()!);

  print('Números ímpares entre 1 e $num:');

  for (int i = 1; i <= num; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
*/

/*
   //exercicio 11

  int? maior;//? pois pode ser nulo
  var numero;

  print('Digite um número (0 para parar): ');
  numero = int.parse(stdin.readLineSync()!);

  while (numero != 0) {
    if (maior == null || numero > maior) {
      maior = numero;
    }
    print('Digite outro número (0 para parar): ');
    numero = int.parse(stdin.readLineSync()!);
  }

  if (maior != null) {
    print('O maior valor é: $maior');
  }
*/

/*
    //exercicio 12

    int soma = 0;
    for(int i=1; i<=10; i++){

      print('Insira um valor:');
      var num = int.parse(stdin.readLineSync()!);

      if(num %2 != 0){
         soma = soma + num;//variavel acumulativa
      }
    }
    print('A soma dos números ímpares é: $soma');
*/

/*
    //exercicio 13
    print('Insira um número positivo:');
    var num = int.parse(stdin.readLineSync()!);

    while (num != 0){
      int raiz = sqrt(num).toInt(); //toInt() para converter o resultado para inteiro
      print('A raiz quadrada de $num é $raiz');

      print('Insira um número positivo:');
      num = int.parse(stdin.readLineSync()!);
    }
*/

/*
    //exercicio 14

    int a = 1;
    int b = 1;
    for(int i=1; i<=15; i++){
      print('$a');
      int c = a + b; // loop 1: c=2 || loop 2: c= 2+1 || loop 3: c= 2+3...
      a = b; // loop 1: a=1  || loop 2: a = 2 || loop 3: a = 3...
      b = c; // loop 1: b= 2 || loop 2: b = 3 || loop 3: b = 5...
      
    }
*/

/*
    //exercicio 15

    int c = 0;
    for(int i= 1; i<=5; i++){
      print("insira o $i número:");
      var num = int.parse(stdin.readLineSync()!);

      if (num < 0){
        c= c+1;
      }

    }
    print("A quantidade de números negativos é: $c");
*/

/*
    //exercicio 16

    int soma = 0;
    int contador = 0;
    double media = 0.0;
    int num = 0;

    print("Insira um número:");
    num = int.parse(stdin.readLineSync()!);
    while(num != 0){
      if(num %2 == 0){
        soma = soma + num;
        contador = contador + 1;
         media = soma / contador;
         media = double.parse(media.toStringAsFixed(2));
      }
      print("Insira um número:");
      num = int.parse(stdin.readLineSync()!);    
    }
    print("A média dos números pares é: $media");



    //exercicio 17
     int i = 100;

     for(i=100; i<= 200; i++){
      if(i % 2 != 0){
        print("$i");
      }
     }
*/

/*
    //exercicio 18
    var cP = 0;
    var cN = 0;
    for(int i =1; i<=10; i++){
      print("Insira o $i número:");
      var num = int.parse(stdin.readLineSync()!);
     if(num >=10 && num <= 20){
        cP = cP + 1;
      }
     else{
        cN = cN + 1;
      }
      
    }
    print("A quantidade de números entre 10 e 20 é: $cP\n e a quantidade de números fora desse intervalo é: $cN\n");
*/  


    //exercicio 19
    for(int i=100; i>=1; i--){
    
        print("$i");
      }



    //exercicio 20
    int soma = 0;
    for(int i=230; i<=520; i++){
      if(i % 2 == 0){
        soma = soma + i;
      }
    }
    print("A soma dos números pares entre 230 e 520 é: $soma");

}












