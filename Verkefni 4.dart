import 'dart:io';

//My solution using a loop as requested starts below on line 20 - but I also
//wanted to include this bit of code, which doesn't use a loop but uses
//.length, and is shorter and quicker:

/*void main() {
  print("Please enter the number you want to check:");
  int numEntered = int.parse(stdin.readLineSync()!);
  //What if the user enters a negative number?
  //This fixes that:
  if (numEntered < 0) {
    numEntered = (numEntered * -1);
  }
    String numString = numEntered.toString();
    int numLength = numString.length;
    print(numLength);
}*/

void main() {
  print("Please enter the number you want to check:");
  int numEntered = int.parse(stdin.readLineSync()!);
  //What if the user enters a negative number?
  //Then the > 0 stuff in the step by step document won't work.
  //This fixes that:
  if (numEntered < 0) {
    numEntered = (numEntered * -1);
  }
  int totalDigits = 1;
  for(int count = 1; count > 0; count++) {
    if (((numEntered / 10) - 1) < 0) {
      print("Number of digits: ${totalDigits}");
      break;
    }
    else
      numEntered = (numEntered / 10).toInt();
      totalDigits = (totalDigits + 1);
  }
}