// Count Words in a Sentence
// Write a function that counts the number of words in a given sentence.
// Words are separated by spaces, and the function should ignore extra spaces.
import 'dart:io';

void main() {
  print("enter the Sentence");
  String Sentence = stdin.readLineSync()!;
  print(CountWords(Sentence));
}

int CountWords(String Sentence) {
  var words = Sentence.split(' ');
  return words.length;
}
