//Given an integer array nums, return true
//if any value appears at least twice in the array,
// and return false
//if every element is distinct.
void main() {
  var numbers = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  var setnumbers = numbers.toSet();
  if (numbers.length == setnumbers.length)
    print("flase");
  else
    print("true");
}
