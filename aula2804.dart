void main() {

  List numeros = [];
  List<String> nomes = ['Ana', 'Bia', 'Cristiano', 'Danilo'];
  List valores = ['Ana',10, 20.5, true];
  List notasProvas = [10, 8.5, 9.0, 7,5, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0];
  List notasProvas2 = [];

  print(numeros);//mostra a lista vazia
  print(nomes[2]);//mostra o nome do terceiro elemento da lista, comeca em 0
  print(nomes);//mostra todos os nomes da lista

  for (int i = 0; i < 4; i++) {//mostra todos os nomes da lista
    print(nomes[i]);
  }

  for (int aux = 0; aux < notasProvas.length; aux++) {//mostra todos as notas da lista quando eu não sei quantos elementos tem
    print(notasProvas[aux]);
  }

    numeros.add(10);
    numeros.add(20);
     numeros.add(30);
    print(numeros);
    numeros.addAll([50, 60, 70]);
    print(numeros);
    numeros.insert(3, 40);
    print(numeros);


    /*for(int cont = 0; cont <= 4; cont++){
    print("Digite a nota da prova '${cont + 1}:");
      String nota = stdin.readLineSync()!;//leitura da nota
     notasProvas2.add(double.parse(nota));//adiciona a nota na lista
    }
    print(notasProvas2);*/

    numeros.add(40);
    print(numeros);
    numeros.remove(40);//remove o primeiro numero 40 que encontrar
    print(numeros);
    numeros.removeAt(2);//remove o numero na posicao 2
    print(numeros);
    numeros.addAll([40 ,80 ,90]);

  print(numeros.length);//mostra o tamanho da lista
  numeros.sort();//ordena a lista em ordem crescente
  print(numeros);
  numeros.reversed;//ordena a lista em ordem decrescente
  print(numeros);
  print(numeros.first);//mostra o primeiro elemento da lista
  print(numeros.last);//mostra o ultimo elemento da lista
  print(numeros.contains(100));//verifica se o numero 100 esta na lista
  print(numeros.contains(80));//verifica se o numero 80 esta na lista
  print(numeros.isEmpty);//verifica se a lista esta vazia
  print(numeros.isNotEmpty);//verifica se a lista não esta vazia


}