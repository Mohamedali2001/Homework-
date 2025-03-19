//  6. Null Safety, Encapsulation & Classes
// Create a class `Person` with the following attributes:-
//`String name`
//- `int? age` (nullable)
//- `bool isStudent` (default is false)
//  Implement:- A constructor that initializes `name` and `age`.
//- A method `displayInfo()` that prints the person's details.
//  In `main()`, create an instance of `Person` and call `displayInfo()`.
void main() {
  Person h = Person("Mohamed", 25);
  h.displayinfo();
}

class Person {
  String? name;
  int? age;
  bool isStudent = false;
  Person(this.name, this.age);
  void displayinfo() {
    print("the name of person is :$name");
    print("the age of person is :$age");
    print("the isstudent of person is :$isStudent");
  }
}
