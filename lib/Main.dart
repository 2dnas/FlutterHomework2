
import 'dart:io';

import 'dart:math';

void main(){
  print("Type exit to quit the game");
  gameLogic();
}

gameLogic(){
  final random = Random();
  int userPoints = 0;
  int computerPoints = 0;


  while(true){


    stdout.write("Press Enter to roll the dice\n");
    String? exit = stdin.readLineSync();

    if(exit?.toLowerCase() == "exit"){
      break;
    }else {
      int userDiceOne = random.nextInt(6) + 1;
      int userDiceTwo = random.nextInt(6) + 1;
      int computerDiceOne = random.nextInt(6) + 1;
      int computerDiceTwo = random.nextInt(6) + 1;
      if((userDiceOne + userDiceTwo) == (computerDiceOne + computerDiceTwo)){
        print("draw");
      }else if((userDiceOne + userDiceTwo) > (computerDiceOne + computerDiceTwo)){
        userPoints++;
        print("You Won");
        print("your Point : ${userDiceOne+userDiceTwo} ------- Computer Point : ${computerDiceOne+computerDiceTwo}");
        print("score: You : $userPoints ------ computer : $computerPoints");
      }else {
        computerPoints++;
        print("Computer Won");
        print("your Point : ${userDiceOne+userDiceTwo} ----------- Computer Point : ${computerDiceOne+computerDiceTwo}");
        print("score: You : $userPoints ------ computer : $computerPoints");

      }
    }



  }

}