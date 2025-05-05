import 'dart:io';
import 'dart:math';

void main() {
/*
  String curso = 'Técnico em Informática';
  print('O curso é: $curso');

  var idade;
  idade = 18;
  print('A idade é: $idade');
  print('A idade no próximo ano é: ${idade + 1}');

  var valor = 12.54;
  print('O valor é: $valor');
  print('O valor arredondado é: ${valor.round()}');


  String telefoneCelular = '(35) 91234-5678';
  print('Telefone celular: $telefoneCelular');

  String? telefoneFixo; //variavel possivelmente nula
  print(telefoneFixo ?? 'Telefone fixo não informado');
*/

  print("Digite seu nome: ");
  var nome = stdin.readLineSync()!;
  print("Olá $nome !");

  print("Digite sua idade: ");
  var idade = stdin.readLineSync()!;
  print("Você tem $idade anos!");
  print("Você terá ${int.parse(idade) + 1} anos no próximo ano!");

  print(pi);
  print(pow (2, 3)); // 2^3 = 8
  print(sqrt(16)); // raiz quadrada de 16 = 4 
  

}
