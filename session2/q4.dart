// Map Lookup
//  Objective: Practice accessing map values using keys.
//  Instructions:-
// Create a map named person with the keys and values: 'name': 'Alice', 'age': '25', and 'city': 'New
//  York'.- Print the age of the person from the map.
//- Update the city to 'Los Angeles' and print the updated map.
void main() {
  Map<dynamic, dynamic> namePerson = {
    'name': 'Alice',
    'age': '25',
    'city': 'New York'
  };
  dynamic nameage = namePerson['age'];
  print("the name of person is:$nameage");
  namePerson['city'] = 'Los Angeles';
  print(namePerson);
}
