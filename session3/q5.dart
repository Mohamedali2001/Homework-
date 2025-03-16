/*
 5. Class Creation and Dot Operator Usage:
 Create a class with a few properties and methods. Instantiate the class and use the dot operator to
 access and print its properties and methods.*/
void main() {
  Human person = Human();
  person.name = "Mohamed";
  person.age = 25;
  person.gender = 'male';
  print("the name is :${person.name}");
  print("the age is :${person.age}");
  print("the gender is :${person.gender}");
  person.HelloInclass();
}

class Human {
  String? name;
  int? age;
  String? gender;
  void HelloInclass() {
    print("Hello in Human class");
  }
}
