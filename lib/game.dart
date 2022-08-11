import 'dart:math';

class Game{
  int answer = 0;
  int? maxRandom = 0;
  Game(maxRandom){
    var r = Random();
    if(maxRandom == null){
      maxRandom = 100;
    }
    answer = r.nextInt(maxRandom) + 1;
    print('ค่าคำตอบคือ $answer');
  }

  int doGuess(int num, int count){
    if(num > answer){
      print('$num is too high');
      return 0;

    }else if(num < answer){
      print('$num is too low');
      return 0;
    }else {
      print('$num is correct, total guesses $count');
      return 1;
    }
  }

}