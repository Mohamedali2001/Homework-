// Find the Longest Word
// Write a function that takes a sentence as input
//and returns the longest word in the sentence.
// If multiple words have the same longest length,
// return the first one that appears.
import 'dart:io';

void main() {
  print("enter the sentence");
  String sentence = stdin.readLineSync()!;
  print(LongestWord(sentence));
}

String LongestWord(String sentence) {
  var words = sentence.split(' ');
  String wordOdd = '';
  print(words);

  for (String item in words) {
    if (item.length > wordOdd.length) {
      wordOdd = item;
    }
  }
  return wordOdd;
}
