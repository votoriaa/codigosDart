import 'dart:io';

int quantidadeVendas = 0;
double valorTotalVendas = 0.0;

void cuidapetrestrito() {
  bool continuarFuncionario = true;
  while (continuarFuncionario) {
    print("1 – Registrar atendimento");
    print("2 – Ver relatório de vendas do dia");
    print("3 – Sair da área restrita");

    print("Escolha uma opção:");
    var opcaoFuncionario = stdin.readLineSync();

    switch (opcaoFuncionario) {
      case '1':
        print("Insira o nome do cliente atendido:");
        var nomeClienteAtendido = stdin.readLineSync()!;
        print("Insira o total que foi gasto:");
        var totalGasto = double.parse(stdin.readLineSync()!);
        print("Insira a forma de pagamento: 1 - Dinheiro // 2 - Cartão\n");
        var met = stdin.readLineSync();

        double valorFinal = totalGasto;

        if (met == '1') {
          valorFinal *= 0.9;
          print("O pagamento em dinheiro possui um desconto de 10%.");
          print(
            "Total a pagar (com desconto): R\$${valorFinal.toStringAsFixed(2)}",
          );
        } else {
          print("Total a pagar: R\$$valorFinal");
        }

        quantidadeVendas++;
        valorTotalVendas += valorFinal;
        break;

      case '2':
        print("\n========== RELATÓRIO DE VENDAS ==========");
        print("Quantidade de vendas: $quantidadeVendas");
        print(
          "Valor total arrecadado: R\$${valorTotalVendas.toStringAsFixed(2)}",
        );
        print("=========================================\n");
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

void main() {
  while (true) {
    List<String> carrinho = [];
    List<double> preco = [];

    print("\nBem-vindo ao autoatendimento do Cuidapet!\n");
    print("Digite seu nome (ou digite '5' para sair): ");
    var nomeCliente = stdin.readLineSync()!;

    if (nomeCliente == '5') {
      print("Obrigado por utilizar nosso PetShop! Até logo!");
      break;
    }

    if (nomeCliente == "cuidapetrestrito") {
      cuidapetrestrito();
      continue;
    }

    var continuar = true;

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
          print(
            "Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R\$290,00.",
          );
          print(
            "Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$492,00.",
          );
          print(
            "Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.",
          );
          print(
            "Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$38,61.",
          );
          print("Código 8 - Adicionar produto ao carrinho.");
          print("Código 0 - Voltar): ");
          var codigo = stdin.readLineSync()!;

          if (codigo == '0') break;

          if (codigo == '8') {
            print("Escolha o código do produto desejado: ");
            codigo = stdin.readLineSync()!;

            if (carrinho.length < 3) {
              switch (codigo) {
                case '101':
                  carrinho.add(
                    "Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg",
                  );
                  preco.add(290.00);
                  print("Produto adicionado.");
                  break;
                case '102':
                  carrinho.add(
                    "Ração Royal Canin Sterilised para Gatos Adultos Castrados",
                  );
                  preco.add(492.00);
                  print("Produto adicionado.");
                  break;
                case '103':
                  carrinho.add(
                    "Bifinho Keldog para Cães Porte Pequeno Sabor Carne",
                  );
                  preco.add(23.92);
                  print("Produto adicionado.");
                  break;
                case '104':
                  carrinho.add(
                    "Fraldas Descartáveis Super Secão para Cães Machos",
                  );
                  preco.add(38.61);
                  print("Produto adicionado.");
                  break;
                default:
                  print("Código inválido.");
              }
            } else {
              print("Seu carrinho já está cheio. (Máximo de 3 itens).");
            }
            break;
          }
        case '2':
          print("Código 201 - Banho e tosa - R\$55,99.");
          print("Código 202 - Tosa higienica - R\$12,99.");
          print("Código 203 - Hidratação dos pelos - R\$20,99.");
          print("Código 8 - Adicionar produto ao carrinho.");
          print("Código 0 - Voltar: ");
          var codigoServico = stdin.readLineSync()!;

          if (codigoServico == '0') break;

          if (codigoServico == '8') {
            print("Escolha o código do serviço desejado: ");
            codigoServico = stdin.readLineSync()!;

            if (carrinho.length < 3) {
              switch (codigoServico) {
                case '201':
                  carrinho.add("Banho e Tosa");
                  preco.add(55.99);
                  print("Serviço adicionado.");
                  break;
                case '202':
                  carrinho.add("Tosa Higienica");
                  preco.add(12.99);
                  print("Serviço adicionado.");
                  break;
                case '203':
                  carrinho.add("Hidratação dos pelos");
                  preco.add(20.99);
                  print("Serviço adicionado.");
                  break;
                default:
                  print("Código inválido.");
              }
            } else {
              print("Seu carrinho já está cheio. (Máximo de 3 itens).");
            }
            break;
          }
        case '3':
          print("\nCarrinho de Compras:");
          for (var i = 0; i < carrinho.length; i++) {
            print("${carrinho[i]} - R\$${preco[i].toStringAsFixed(2)}");
          }
          break;

        case '4':
          if (carrinho.isEmpty) {
            print("Seu carrinho está vazio.");
            break;
          }

          double totalCompra = preco.reduce((a, b) => a + b);
          print("\nResumo da Compra:");
          for (var i = 0; i < carrinho.length; i++) {
            print("${carrinho[i]} - R\$${preco[i].toStringAsFixed(2)}");
          }

          print("Total: R\$${totalCompra.toStringAsFixed(2)}");

          print("Escolha a forma de pagamento: 1 - Dinheiro / 2 - Cartão");
          var formaPagamento = stdin.readLineSync();

          if (formaPagamento == "1") {
            totalCompra *= 0.9;
            print("Você recebeu 10% de desconto por pagar em dinheiro!");
            print("Total a pagar: R\$${totalCompra.toStringAsFixed(2)}");
          } else {
            print("Total a pagar: R\$${totalCompra.toStringAsFixed(2)}");
          }

          quantidadeVendas++;
          valorTotalVendas += totalCompra;

          print("Obrigado pela compra, ${nomeCliente}!");
          print("Esperamos vê-lo novamente em breve.");
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
}
