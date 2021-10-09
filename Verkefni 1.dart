import 'dart:io';

void main() {
  int sumAll = 0;
  for(int i = 1; i < 11; i++) {
    print(i);
    sumAll = (sumAll + i);
  }
  print(sumAll);
}