// 7. Loops, Conditional Statements & Logical Operators
//  Write a program that prints the numbers 1 to 20 but:
//- If a number is divisible by 3, print "Fizz".
//- If a number is divisible by 5, print "Buzz".
//- If a number is divisible by both 3 and 5, print "FizzBuzz".
import 'dart:io';

void main() {
  print("enter the number");
  num number = num.parse(stdin.readLineSync()!);
  checkNumber(number);
}

void checkNumber(num number) {
  if (number % 3 == 0 && number % 5 == 0) {
    print("FizzBuzz");
  } else if (number % 5 == 0) {
    print('Buzz');
  } else if (number % 3 == 0) {
    print("Fizz");
  }
}
