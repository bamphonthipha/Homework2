import 'dart:io';
import 'dart:math';

import 'game.dart';

void main(){
  stdout.write('Enter a maximum to reandom : ');
  var a = stdin.readLineSync();
  var maxRandom = int.tryParse(a!);

  var game = new Game(maxRandom);
  int  result = 0;
  var myList = <int>[];
  int count = 0;
  do{
    stdout.write('Please guess the number between 1 and $maxRandom : ');

    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if(guess == null){
      print('Please enter number only');
      continue;
    }
    count++;
    result = game.doGuess(guess, count);

    while(result == 1){
      myList.add(count);
      count = 0;
      stdout.write('Do you want to play again?(Y/N) : ');


      var yes = stdin.readLineSync();
      if(yes == 'y' || yes == 'Y'){
        stdout.write('Enter a maximum to reandom : ');
        a = stdin.readLineSync();
        maxRandom = int.tryParse(a!);

        game = new Game(maxRandom);
        result = 0;
      }else if(yes == 'n' || yes == 'N'){
        break;
      }else{
        print('Please answer(Y/N)');
      }
    };

  } while (result != 1);
  int len = myList.length;
  print("You've played" + len.toString() + "games");

      for (var i = 0; i < myList.length; i++) {
        print("❤ Game #"+ (i+1).toString()+ ":" + myList[i].toString() + "guesses");

      }

}
