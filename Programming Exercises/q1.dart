//  Basic Arithmetic Calculator
//  Write a function that takes two numbers
//and an operator (+, -, *, /) as input and returns the result.
//  Handle cases where division by zero might occur
import 'dart:io';

void main() {
  print("enter the frist number ");
  num number1 = num.parse(stdin.readLineSync()!);
  print("enter the second number ");
  num number2 = num.parse(stdin.readLineSync()!);

  Calculator(number1: number1, number2: number2);
}

void Calculator({required num number1, required num number2}) {
  num sum = number1 + number2;
  num sub = number1 - number2;
  num mul = number1 * number2;

  if (number2 == 0) {
    print("please not div by zera");
  } else {
    num div = number1 / number2;
    print("the div of the two numbers is : $div");
  }
  print("the sum of the two numbers is :$sum");
  print("the sub of the two numbers is :$sub");
  print("the mul of the two numbers is :$mul");
}
