import 'dart:io';
import 'dart:math';

void main() {
  //exercicio 1
  List<int> numInt = List.filled(5, 0);
  for (int i = 0; i < numInt.length; i++) {
    if (i % 2 == 0) {
      numInt[i] = 1;
    } else {
      numInt[i] = 0;
    }
  }
  print('Lista preenchida: $numInt\n');


  //exercicio 2
  List<int> num = [];
  int soma = 0;
  for (int i = 1; i <= 5; i++) {
    print('Insira o número $i:');
    num.add(int.parse(stdin.readLineSync()!));
    soma += num[i - 1];
  }
  print('\nA soma dos números é: $soma');
  print('Os números digitados foram:');
  for (int numero in num) {
    print(numero);
  }

  //exercicio 3
  List<int> numeros = [150, 25, 300, 75, 120, 90, 200, 60, 180, 45];
  int contador = 0;

  print('Lista de números:');
  for (int numero in numeros) {
    print(numero);
    if (numero > 100) {
      contador++;
    }
  }
  print('Quantidade de números maiores que 100: $contador\n');

  //exercicio 4
  List<int> val = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int somaImpares = 0;

  for (int numero in val) {
    if (numero % 2 != 0) {
      somaImpares += numero;
    }
  }

  print('A soma dos números ímpares da lista é: $somaImpares\n');


  //exercicio 5
  List<double> notas = [];
  for (int i = 0; i < 10; i++) {
    stdout.write("Digite a nota do aluno ${i + 1}: ");
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }
  double maiorNota = notas.reduce(max);
  print("A maior nota da sala é: $maiorNota");


  //exercicio 6
  List<int> quadrados = List.generate(10, (index) => index * index);
  print(quadrados);


  //exercicio 7
  List<int> somaP = List.generate(10, (index) => (index + 1) * 2);
  print(somaP);


  //exercicio 8
  List<int> nume = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Digite o número ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  print("Números na ordem inversa: ${numeros.reversed.toList()}");
}
