//  Check Leap Year
//  Write a function that determines if a given year is a leap year.
//  A year is a leap year if it is divisible by 4 but not divisible by 100,
// except if it is also divisible by 400
import 'dart:io';

void main() {
  print("enter the the number year");
  int numberOfYear = int.parse(stdin.readLineSync()!);
  CheckLeapYear(numberOfYear);
}

void CheckLeapYear(num dayOfYear) {
  if (dayOfYear % 4 == 0 && dayOfYear % 100 != 0) {
    print("the year $dayOfYear is day leap");
  } else if (dayOfYear % 400 == 0) {
    print("the year $dayOfYear is day leap");
  } else {
    print("the year $dayOfYear is not  day leap");
  }
}
