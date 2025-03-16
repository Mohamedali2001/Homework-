/*
 6. Working with Maps - Student Details:- Task 1:
  Create a map representing a student with keys for name, age, and grade. Add, update,
 and remove entries from the map, printing the map after each operation.-
  Task 2: Iterate over the map and print each key-value pair.*/
void main() {
  Map<dynamic, dynamic> student = {
    "name": "Mohamed",
    "age": 20,
    "grade": 'A+',
  };
  print(student);
  student["gender"] = "male";
  print(student);
  student['age'] = 30;
  print(student);
  student.remove('grade');
  print(student);
  student.forEach((key, value) {
    print("$key:$value");
  });
  for (var item in student.entries) {
    print(item);
  }
}
