// 4. Maps, Functions & User Input
//  Create a Dart program that:
//- Declares a `Map<String, int>` where keys are fruit names and values are their
//  prices.
//- Implements a function `getPrice(String fruitName)` that returns the price of a
//  given fruit.
//- If the fruit is not found, return -1.
//  Call the function inside `main()` and print the result.
import 'dart:io';

void main() {
  print("enter the name of fruit ");
  String nameFruit = stdin.readLineSync()!;
  getPrice(nameFruit);
}

void getPrice(String fruitName) {
  Map<String, int> priceOfFruit = {
    "Apple": 20,
    "Banana": 30,
    "Mango": 40,
    "Kiwi": 50,
  };

  dynamic price = priceOfFruit[fruitName];
  bool isfind = priceOfFruit.containsKey(fruitName);

  if (isfind) {
    print("the price of $fruitName is equal :$price");
  } else {
    print("not found fruit");
  }
}
