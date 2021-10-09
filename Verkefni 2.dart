import 'dart:io';

void main() {
  print("Please enter the number you want to multiply:");
  int numMulti = int.parse(stdin.readLineSync()!);
  for(int i = 1; i < 11; i++) {
    print("${numMulti} * ${i} = ${numMulti * i}");
  }
}