import 'dart:io';

void main() {
  int sumAll = 0;
  for(int i = 1; i < 6; i++) {
    print("Please enter number #${i}:");
    int enteredNum = int.parse(stdin.readLineSync()!);
    sumAll = (sumAll + enteredNum);
  }
  print("Total sum of all numbers: ${sumAll}");
  print("Average of all numbers: ${sumAll / 5}");
}