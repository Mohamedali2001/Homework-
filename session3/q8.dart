/*
 8. Range Checker Program:
 Write a Dart program that checks if a number is within a specified range using logical operators and
 prints the result*/
import 'dart:io';

void main() {
  print("neter the number :");
  num number = num.parse(stdin.readLineSync()!);
  if (number > 0 && number <= 100)
    print("the number is find of range ");
  else
    print("the number is not find of range ");
}
