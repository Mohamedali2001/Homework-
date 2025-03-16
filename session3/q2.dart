/*
 2. Grocery List Manager:
 Implement a program that uses a List to store grocery items. It should allow adding, removing, and
 displaying items. Use functions with return types and optional/named parameters. Make sure to
 handle possible null values.*/
void main() {
  //sugar, cheese and rice
  var storeGrocery = ["milk", 'Eggs', 'oil', 'rice'];
  print(storeGrocery);
  storeGrocery.add('chesse');
  storeGrocery.add('sugar');
  print(storeGrocery);
  storeGrocery.remove('milk');
  print(storeGrocery);
}
