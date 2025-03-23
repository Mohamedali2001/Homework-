// Reverse a String
// Write a function that takes a string as input and
//returns the string reversed.
// Example:
// reverseString('hello') -> 'olleh'
import 'dart:io';

void main() {
  print("enter the Sentence");
    String Sentence = stdin.readLineSync()!;
    
  print(ReverseString(Sentence));
}

String ReverseString(String Sentence) {
  return Sentence.split('').reversed.join('');
}
