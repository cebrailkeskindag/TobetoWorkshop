import 'dart:io';
import 'dart:math';

bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int numberOfDigits = number.toString().length;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, numberOfDigits).toInt();
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main() {
  print("Kontrol etmek istediğiniz sayıyı buraya giriniz: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isArmstrongNumber(number)) {
    print('$number bir Armstrong sayısıdır.');
  } else {
    print('$number bir Armstrong sayısı değildir.');
  }
}
