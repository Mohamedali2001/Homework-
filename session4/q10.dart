// 10. For-Each Loop, Lists & String Manipulation
//  Create a list of 5 words.
//- Iterate through the list using a for-each loop.
//- Convert each word to uppercase.
//- Print each word in uppercase.
void main() {
  var words = ["ali", "ahmed", "mina", "Mohamed", "wale"];
  words.forEach((element) {
    print(
        "the world of list after convert to uppercase :${element.toUpperCase()}");
  });
}
