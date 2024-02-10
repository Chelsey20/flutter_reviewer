import 'dart:io';

void main() {
  //conditional expressions
  //1. condition ? exp1 : exp2
  //If condition is true, evaluate expr1 (and returns its value);
  //otherwise, evaluate anf return the value of expr2
  int a = 2;
  int b = 3;
  int smallNumber;

  if (a < b) {
    // print("$a is smaller");
    smallNumber = a;
  } else {
    // print("$b is smaller");
    smallNumber = b;
  }
  print("$smallNumber is smaller");
  // a < b ? print("$a is smaller") : print("$b is smaller");

  smallNumber = a < b ? a : b;
  print("$smallNumber is smaller");

  //2. exp1 ?? exp2
  //if expr1 is non-null, returns it value; otherwise, evaluates and
  //returns the value of expr2

  String name = "tom";

  String nameToPrint = name ?? "Guest User";
  print(nameToPrint);
}
