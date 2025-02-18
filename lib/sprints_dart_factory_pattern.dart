abstract class Shape {
  void revealMe();

  //this is a better way than creating a different class.
  factory Shape(String shapeType) {
    switch (shapeType.toLowerCase()) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
      default:
        return Circle();
    }
  }
}

class Circle implements Shape {
  @override
  void revealMe() {
    print("You chose to print circle");
  }
}

class Rectangle implements Shape {
  @override
  void revealMe() {
    print("You chose to print rectangle");
  }
}

class Square implements Shape {
  @override
  void revealMe() {
    print("You chose to print square");
  }
}

void main() {
  List<String> shapeNames = ['circle', 'rectangle', 'square'];

  for (var item in shapeNames) {
    Shape shape = Shape(item);
    shape.revealMe();
  }
}
