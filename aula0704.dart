import 'dart:io';
import 'dart:math';
void main() {
  
  //Exercicio 1
      print('Insira um número: ');
      var num = stdin.readLineSync()!;

      if(int.parse(num) > 0){
        print('A raiz quadrada do número $num é: ${sqrt(int.parse(num))}\n');
      }
      else{
        print('Número inválido!');
      }

  //Exercicio 2
    print('Insira um número: ');
    var num5 = stdin.readLineSync()!; 

    if(int.parse(num5) % 5 == 0)
    {
      print ('O número $num5 é múltiplo de 5 \n');
    }
    else{
      print ('O número $num5 não é múltiplo de 5 \n');
    }
      

    //Exercicio 3
    print('Insira a sua idade: ');
    var idade = stdin.readLineSync()!;

    if(int.parse(idade)>= 18 && int.parse(idade) <= 67){
      print('Você pode doar sangue! \n');
    }
    
    else{
      print('Você não pode doar sangue! \n');
    }


    //Exercicio 4

    print('Insira um número de 1 a 5:');
    var numext = stdin.readLineSync()!;

    switch(numext){
      case '1':
        print('UM\n');
        break;

        case '2':
        print('DOIS\n');
        break;

        case '3':
        print('TRÊS\n');
        break;

        case '4':
        print('QUATRO\n');
        break;

        case '5':
        print('CINCO\n');
        break;

        default:
        print('Número inválido! \n');
    }

}