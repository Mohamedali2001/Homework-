/*
 1. Basic Calculator:
 Create a Dart program that takes two numbers as input and performs addition, subtraction,
 multiplication, and division using variables, arithmetic operators, and functions. Also, include
 optional parameters for different operations (e.g., addition of multiple numbers).*/
import 'dart:io';

void main() {
  print("enter the frist number");
  num number1 = num.parse(stdin.readLineSync()!);
  print("enter the secnd number");
  num number2 = num.parse(stdin.readLineSync()!);
  print("the sum of two number is :${add(number1, number2)}");
  print("the sub of two number is :${sub(number1, number2)}");
  print("the mul of two number is :${mul(number1, number2)}");
  print("the div of two number is :${div(number1, number2)}");
}

num add([num? number1, num? number2]) {
  return number1! + number2!;
}

num sub([num? number1, num? number2]) {
  return number1! - number2!;
}

num div([num? number1, num? number2]) {
  return number1! / number2!;
}

num mul([num? number1, num? number2]) {
  return number1! * number2!;
}
