void main() {
  var system = LoanProcessingSystem();

  var loan1 = PersonalLoan("Ali", 10000);
  var loan2 = HomeLoan("Mona", 60000);
  var loan3 = CarLoan("Youssef", 70000);

  system.applyLoan(loan1);
  system.applyLoan(loan2);
  system.applyLoan(loan3);

  system.calculateInstallments(6); 
}

abstract class Loan {
  String? borrowerName;
  double? locnAmount;
  double? interestRate;
  double calculateMonthlyInstallment(int months);
  Loan(this.borrowerName, this.locnAmount, this.interestRate);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double locnAmount)
    : super(borrowerName, locnAmount, (10 / 100));

  @override
  double calculateMonthlyInstallment(int months) {
    double MonthlyInstallment =
        (locnAmount! + ((10 / 100) * locnAmount!) / months);
    return MonthlyInstallment;
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double locnAmount)
    : super(borrowerName, locnAmount, locnAmount > 500000 ? 0.095 : 0.08);
  @override
  double calculateMonthlyInstallment(int months) {
    return (locnAmount! + (interestRate! * locnAmount!)) / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double locnAmount)
    : super(borrowerName, locnAmount, locnAmount > 50000 ? 0.09 : 0.07);
  @override
  double calculateMonthlyInstallment(int months) {
    return (locnAmount! + (interestRate! * locnAmount!)) / months;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];
  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print('${loan.borrowerName} - Monthly Installment: ${installment}');
    }
  }
}
