void main() {
  findPerimeter(4, 2);
  int rectArea = getArea(10, 5);
  print("The area is $rectArea");
}

// void findPerimeter(int length, int breadth) {
//   print('The perimeter is ${2 * (length + breadth)}');
// }

//using fat arrow // short hand syntax
void findPerimeter(int length, int breadth) =>
    print('The perimeter is ${2 * (length + breadth)}');

// int getArea(int length, int breadth) {
//   int area = length * breadth;
//   return area;
// }

int getArea(int length, int breadth) => length * breadth;

//fat arrow
// only one single expr
// no curly brackets
// no return
