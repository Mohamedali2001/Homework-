// 9. OOP, Constructors & Getters
//  Create a class `Rectangle` with:
//- Private attributes `_width` and `_height`.
//- A constructor that initializes the values.-
// A getter `area` that calculates and returns the area.
// //  In `main()`, create a `Rectangle` object and print its area.
class Rectangle {
  num? _width;
  num? _height;
  Rectangle({required width, required height}) {
    this._width = width;
    this._height = height;
  }
  num get area => (_height! * _width!);
}
