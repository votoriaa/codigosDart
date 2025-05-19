import 'dart:io';

void main() {
  exercicio1();
  exercicio2();
  exercicio3();
  Gato();
  Cachorro();
  exercicio5();
}

//exercicio 1
class Pessoa {
  String nome;
  int idade;


  Pessoa(this.nome, this.idade);

void aniversario() {
  idade++;
  print(' Você agora tem $idade anos.');
}

void falar(){
  print('Oi, meu nome é $nome.');
}

  void exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
  }
}

void exercicio1() {
  // Instanciando um objeto da classe Pessoa
  Pessoa pessoa1 = Pessoa('Victoria', 18);

  // Imprimindo os dados
  pessoa1.exibirDados();

}

void exercicio2() {
  
  Pessoa pessoa2 = Pessoa('Tiago', 8);
  pessoa2.falar();
}

//exercicio 3
class Carro{

  String marca;
  String modelo;
  int ano;

  Carro(this.marca, this.modelo, this.ano);
  void exibirDados() {
    print("Marca: $marca, Modelo: $modelo, Ano: $ano");
  }
}
void exercicio3() {
  Carro carro1 = Carro('Fiat', 'Uno', 2015);
  carro1.exibirDados();
  Carro carro2 = Carro('VolksWagen', 'Gol', 2008);
  carro2.exibirDados();
}

//exercicio 4
class Animal{
   void fazerSom() {
    print("O animal emitiu um som.");
}
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print("O cachorro latiu.");
  }
}
class Gato extends Animal {
  @override
  void fazerSom() {
    print("O gato miou.");
  }
}

void exercicio5() {
  Pessoa pessoa = Pessoa("Priscila", 32);
  pessoa.aniversario();
}

class ContaBancaria{
  String titular;
  double saldo;
  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$$valor realizado com sucesso.");

  }
  void sacar(double valor) {
    if (valor > saldo) {
      print("Saldo insuficiente.");
    } else {
      saldo -= valor;
      print("Saque de R\$$valor realizado com sucesso.");
    }
  }
}


class retangulo{
  double largura;
  double altura;

  retangulo(this.largura, this.altura);

  double calcularArea() {
    return largura * altura;
  }
}
//exercicio 6

class Funcionario{
   String nome;
   double salario;
   Funcionario(this.nome, this.salario);

}

class Gerente extends Funcionario {
  String departamento;

  Gerente(String nome, double salario, this.departamento) : super(nome, salario);

  void exibirDados() {
    print("Nome: $nome, Salário: R\$$salario, Departamento: $departamento");
  }
} homi pelado