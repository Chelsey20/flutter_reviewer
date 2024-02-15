void main() {
  var rectangle = Rectangle();
  rectangle.draw();
}

abstract class Shape {
  //cannot instantiate abstract class
  void draw(); //abstract method, needs to be override
}

class Rectangle extends Shape {
  void draw() {
    //overriding
    print('Drawing rectangle...');
  }
}
