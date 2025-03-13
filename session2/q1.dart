//  Using Dot Operator with Strings
//  Objective: Practice using the dot operator with string methods.
//  Instructions:- Create a string variable greeting with the value 'Hello, Dart!'.- Print the length of greeting.
//  - Convert greeting to uppercase and print it.
import 'dart:io';

void main() {
  print("enter the name");
  String name = stdin.readLineSync()!;
  print("the names is $name");
  print(name.length);
  print(name.toUpperCase());
}
