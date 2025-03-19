//  3. Lists, Loops & If Conditions
//  Create a list of numbers. Iterate over the list and:-
//If a number is even, print "Even: <number>".-
// If a number is odd, print "Odd: <number>".
void main() {
  var numbers = [120, 90, 40.9, 65, 87.67];
  for (var item in numbers) {
    if (item % 2 == 0)
      print("the number $item is even");
    else
      print("the number $item is odd");
  }
}
