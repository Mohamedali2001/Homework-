//  2. Arithmetic Operators, Conditional Statements & Functions
//  Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
//  bonus based on the following rules:-
//If the employee has worked for 5 or more years, they get a 10% bonus.-
// Otherwise, they get a 5% bonus.
//  The function should return the bonus amount.
//  Then, call the function inside `main()` and print the result
import 'dart:io';

void main() {
  print("enter the salary ");
  num salary = num.parse(stdin.readLineSync()!);
  print("enter the yearsWorked ");
  int yearsWorked = int.parse(stdin.readLineSync()!);

  calculateBonus(salary, yearsWorked);
}

void calculateBonus(num salary, int yearsWorked) {
  num bonus;
  if (yearsWorked >= 5) {
    bonus = salary * (10 / 100);
    salary = salary + bonus;

    print("the amount of bouns is equal :$bonus");
    print("the salary after add bouns is equal:$salary");
  } else {
    bonus = salary * (5 / 100);
    salary = salary + bonus;

    print("the amount of bouns is equal :$bonus");
    print("the salary after add bouns is equal:$salary");
  }
}
