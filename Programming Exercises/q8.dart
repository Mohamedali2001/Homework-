// Sum of List Elements
// Write a function that takes a list of numbers and returns the sum of all elements.
// Example:
// sumList([1, 2, 3, 4, 5]) -> 15
import 'dart:io';

void main() {
  var listNumbers = [];
  bool isEnter = true;
  while (isEnter) {
    print("enter the numbers of list");
    var inputValue = stdin.readLineSync()!;
    if (inputValue == "not") {
      isEnter = false;
    } else {
      num number = num.parse(inputValue);
      listNumbers.add(number);
      continue;
    }
  }
  print("the sum of number of list is Equal:${SumOfListElements(listNumbers)}");
}

num SumOfListElements(List listNumbers) {
  num sum = 0;
  listNumbers.forEach((element) {
    sum += element;
  });
  return sum;
}
