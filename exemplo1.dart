void main(){
  int soma = 10;
  print(soma);

  String curso = 'Técnico em Informática';
  print(curso);

  String linguagem;
  linguagem = 'dart';
  int ano;
 
  ano = 2025;
  print(linguagem);
  print(ano);

  var nome,idade;
  nome = 'Maria';
  idade = '25';

  print(nome);
  print(idade);

  String meuNome = 'Maria';
  int minhaIdade = 25;
  print('Meu nome é $meuNome e tenho $minhaIdade anos.');

  List numeros = [1,2,3,4,5];
  print(numeros);

  dynamic valor = 10;
  print(valor);
  valor = 'Maria';
  print(valor);

  double precoProduto = 10.50;
  double precoProduto2 = 10.50;
  precoProduto = double.parse(precoProduto.toStringAsFixed(2));
  precoProduto2 = double.parse(precoProduto2.toStringAsFixed(2));
  print(precoProduto.round());
  print(precoProduto2.round());

  String nomeCurso = 'Técnico em Informática';
  print(nomeCurso.length);
  print(nomeCurso.toUpperCase());
  print(nomeCurso.toLowerCase());

}