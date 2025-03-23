// Employee Payroll System
// Implement an employee payroll system.
// Create a base Employee class with properties: name, id, and salary.
// Implement a method calculateSalary() in the base class.
// Create two subclasses:
// - FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
// - PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
// salary based on hours worked
void main() {
  FullTimeEmployee employer1 = FullTimeEmployee(
    name: "Mohamed",
    id: 58,
    salary: 6000,
    bonus: 1000,
  );
  print(
    "the salary of employee after add bonus is ${employer1.calculateSalary()}",
  );
  PartTimeEmployee employer2 = PartTimeEmployee(
    name: "Ahmed",
    id: 92,
    hoursWorked: 100,
    hourlyRate: 50,
  );
  print(
    "the salary of employee work in the part time is ${employer2.calculateSalary()}",
  );
}

abstract class employee {
  String name;
  int id;
  num? salary;
  employee({required this.name, required this.id, this.salary});

  num calculateSalary();
}

class FullTimeEmployee extends employee {
  double bonus;
  FullTimeEmployee({
    required super.name,
    required super.id,
    required super.salary,
    required this.bonus,
  });
  @override
  num calculateSalary() {
    return salary! + bonus;
  }
}

class PartTimeEmployee extends employee {
  int hoursWorked;
  double hourlyRate;
  PartTimeEmployee({
    required super.name,
    required super.id,
    required this.hoursWorked,
    required this.hourlyRate,
  });

  @override
  num calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
