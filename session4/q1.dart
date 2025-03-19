//  1. Variables, Data Types & Print Statement
//  Create a Dart program that declares and initializes the following variables:-
//Your name (String)-
//Your age (int)-
//Your height (double)-
//Whether you are a student (bool)
// //  Then, print these values using a single print statement.
import 'dart:io';

void main() {
  print("enter the name");
  String name = stdin.readLineSync()!;
  print("enter the age");
  int age = int.parse(stdin.readLineSync()!);
  print("enter the height");
  int height = int.parse(stdin.readLineSync()!);
  print("enter the whther");
  bool whether = stdin.readLineSync()!.toLowerCase() == "true";
  Map<String, dynamic> infoOfStudent = {
    "name": name,
    "age": age,
    "height": height,
    "whether": whether,
  };
  print("the all of inforation the student storage in the Map :$infoOfStudent");
}
