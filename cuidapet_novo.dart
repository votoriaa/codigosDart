import 'dart:io';

class VendasRelatorio {
  int quantidadeVendas = 0;
  double valorTotalVendas = 0.0;

  void registrarVenda(double valor) {
    quantidadeVendas++;
    valorTotalVendas += valor;
  }

  void exibirRelatorio() {
    print("\n========== RELATÓRIO DE VENDAS ==========");
    print("Quantidade de vendas: $quantidadeVendas");
    print("Valor total arrecadado: R\$${valorTotalVendas.toStringAsFixed(2)}");
    print("=========================================\n");
  }
}

class ItemCarrinho {
  final String descricao;
  final double preco;

  ItemCarrinho(this.descricao, this.preco);
}

class Carrinho {
  final List<ItemCarrinho> itens = [];

  bool get estaCheio => itens.length >= 3;
  bool get estaVazio => itens.isEmpty;

  void adicionarItem(String descricao, double preco) {
    if (estaCheio) {
      throw Exception("Carrinho cheio (máximo 3 itens)");
    }
    itens.add(ItemCarrinho(descricao, preco));
  }

  double calcularTotal() {
    return itens.fold(0.0, (total, item) => total + item.preco);
  }

  void exibirItens() {
    print("\nCarrinho de Compras:");
    for (var item in itens) {
      print("${item.descricao} - R\$${item.preco.toStringAsFixed(2)}");
    }
  }

  void limpar() {
    itens.clear();
  }
}

class Autoatendimento {
  final VendasRelatorio vendasManager;
  final Carrinho carrinho;

  Autoatendimento(this.vendasManager, this.carrinho);

  void iniciar() {
    while (true) {
      print("\nBem-vindo ao autoatendimento do Cuidapet!\n");
      print("Digite seu nome (ou digite '5' para sair): ");
      var nomeCliente = stdin.readLineSync()!;

      if (nomeCliente == '5') {
        print("Obrigado por utilizar nosso PetShop! Até logo!");
        break;
      }

      if (nomeCliente == "cuidapetrestrito") {
        _areaRestrita();
        continue;
      }

      _menuCliente(nomeCliente);
    }
  }

  void _areaRestrita() {
    bool continuarFuncionario = true;
    while (continuarFuncionario) {
      print("\n1 – Registrar atendimento");
      print("2 – Ver relatório de vendas do dia");
      print("3 – Sair da área restrita");
      print("Escolha uma opção:");
      
      var opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          _registrarAtendimento();
          break;
        case '2':
          vendasManager.exibirRelatorio();
          break;
        case '3':
          continuarFuncionario = false;
          print("Saindo da área restrita...\n");
          break;
        default:
          print("Opção inválida. Tente novamente.\n");
      }
    }
  }

  void _registrarAtendimento() {
    print("Insira o nome do cliente atendido:");
    var nomeCliente = stdin.readLineSync()!;
    print("Insira o total que foi gasto:");
    var totalGasto = double.parse(stdin.readLineSync()!);
    print("Insira a forma de pagamento: 1 - Dinheiro // 2 - Cartão\n");
    var metodo = stdin.readLineSync();

    double valorFinal = totalGasto;

    if (metodo == '1') {
      valorFinal *= 0.9;
      print("O pagamento em dinheiro possui um desconto de 10%.");
      print("Total a pagar (com desconto): R\$${valorFinal.toStringAsFixed(2)}");
    } else {
      print("Total a pagar: R\$$valorFinal");
    }

    vendasManager.registrarVenda(valorFinal);
  }

  void _menuCliente(String nomeCliente) {
    var continuar = true;
    carrinho.limpar();

    while (continuar) {
      print("---------------------  MENU  --------------------\n");
      print("Opção 1 – Ver promoções.");
      print("Opção 2 – Solicitar serviço.");
      print("Opção 3 – Listar carrinho de compra.");
      print("Opção 4 – Finalizar carrinho de compra.");
      print("Opção 5 – Sair.\n");
      print("Escolha uma opção: ");
      var opcao = stdin.readLineSync()!;

      switch (opcao) {
        case '1':
          _menuPromocoes();
          break;
        case '2':
          _menuServicos();
          break;
        case '3':
          carrinho.exibirItens();
          break;
        case '4':
          _finalizarCompra(nomeCliente);
          continuar = false;
          break;
        case '5':
          print("Obrigado por utilizar nosso PetShop! Até logo!");
          exit(0);
        default:
          print("Opção inválida. Tente novamente.");
      }
    }
  }

  void _menuPromocoes() {
    print("Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R\$290,00.");
    print("Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$492,00.");
    print("Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.");
    print("Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$38,61.");
    print("Escolha o código do produto desejado (ou 0 para voltar): ");
    var codigo = stdin.readLineSync()!;

    if (codigo == '0') return;

    try {
      if (carrinho.estaCheio) {
        print("Seu carrinho já está cheio. (Máximo de 3 itens).");
        return;
      }

      switch (codigo) {
        case '101':
          carrinho.adicionarItem(
              "Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg", 
              290.00);
          break;
        case '102':
          carrinho.adicionarItem(
              "Ração Royal Canin Sterilised para Gatos Adultos Castrados", 
              492.00);
          break;
        case '103':
          carrinho.adicionarItem(
              "Bifinho Keldog para Cães Porte Pequeno Sabor Carne", 
              23.92);
          break;
        case '104':
          carrinho.adicionarItem(
              "Fraldas Descartáveis Super Secão para Cães Machos", 
              38.61);
          break;
        default:
          print("Código inválido.");
          return;
      }
      print("Produto adicionado.");
    } catch (e) {
      print(e.toString());
    }
  }

  void _menuServicos() {
    print("Código 201 - Banho e tosa - R\$55,99.");
    print("Código 202 - Tosa higienica - R\$12,99.");
    print("Código 203 - Hidratação dos pelos - R\$20,99.");
    print("Escolha o código do serviço desejado (ou 0 para voltar): ");
    var codigo = stdin.readLineSync()!;

    if (codigo == '0') return;

    try {
      if (carrinho.estaCheio) {
        print("Seu carrinho já está cheio. (Máximo de 3 itens).");
        return;
      }

      switch (codigo) {
        case '201':
          carrinho.adicionarItem("Banho e Tosa", 55.99);
          break;
        case '202':
          carrinho.adicionarItem("Tosa Higienica", 12.99);
          break;
        case '203':
          carrinho.adicionarItem("Hidratação dos pelos", 20.99);
          break;
        default:
          print("Código inválido.");
          return;
      }
      print("Serviço adicionado.");
    } catch (e) {
      print(e.toString());
    }
  }

  void _finalizarCompra(String nomeCliente) {
    if (carrinho.estaVazio) {
      print("Seu carrinho está vazio.");
      return;
    }

    carrinho.exibirItens();
    double total = carrinho.calcularTotal();
    print("Total: R\$${total.toStringAsFixed(2)}");

    print("Escolha a forma de pagamento: 1 - Dinheiro / 2 - Cartão");
    var formaPagamento = stdin.readLineSync();

    if (formaPagamento == "1") {
      total *= 0.9;
      print("Você recebeu 10% de desconto por pagar em dinheiro!");
      print("Total a pagar: R\$${total.toStringAsFixed(2)}");
    } else {
      print("Total a pagar: R\$${total.toStringAsFixed(2)}");
    }

    vendasManager.registrarVenda(total);
    print("Obrigado pela compra, $nomeCliente!");
    print("Esperamos vê-lo novamente em breve.");
  }
}

void main() {
  final vendasManager = VendasRelatorio();
  final carrinho = Carrinho();
  final autoatendimento = Autoatendimento(vendasManager, carrinho);
  
  autoatendimento.iniciar();
}