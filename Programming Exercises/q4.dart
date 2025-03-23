// Find Prime Numbers in a Range
//  Write a function that takes two numbers (start, end)
//and returns a list of all prime numbers between
//  them.
//  Ensure that the function correctly identifies prime numbers
//and handles edge cases where start is greater than end.
import 'dart:io';

void main() {
  print("enter the start ranage ");
  int start = int.parse(stdin.readLineSync()!);
  print("enter the end ranage ");
  int end = int.parse(stdin.readLineSync()!);
  for (int i = start; i <= end; i++) {
    if (primeNumber(i)) {
      print(i);
    }
  }
}

bool primeNumber(int number) {
  if (number < 2) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
