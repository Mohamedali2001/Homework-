/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.*/
import 'dart:io';

void main() {
  print("ente");
  String text = stdin.readLineSync()!;
  String textUpdata =
      (text.replaceAll(RegExp(r'[^a-zA-Z]'), " ")).toLowerCase();
  print(textUpdata);
  bool Palindrome = false;
  for (int i = 0; i < (textUpdata.length) / 2; i++) {
    if (textUpdata[i] == textUpdata[textUpdata.length - (i + 1)]) {
      Palindrome = true;
    } else {
      Palindrome = false;
    }
  }
  print(Palindrome);
}

bool isPalindrome(String s) {
  String textUpdata = (s.replaceAll(RegExp(r'[^a-zA-Z]'), " ")).toLowerCase();
  print(textUpdata);
  bool Palindrome = false;
  if (textUpdata.isEmpty) {
    Palindrome = true;
  } else if (textUpdata.length == 1) {
    Palindrome = true;
  }
  for (int i = 0; i < ((textUpdata.length) / 2).toInt(); i++) {
    if (textUpdata[i] == textUpdata[textUpdata.length - (i + 1)]) {
      Palindrome = true;
    } else {
      Palindrome = false;
      break;
    }
  }
  return Palindrome;
}
