void main() {
  var student1 = Student();
  print("${student1.id} and ${student1.name}");
  student1.study();
  student1.sleep();
}

class Student {
  int id = 123;
  String name = 'chelsey';

  void study() {
    print('${this.name} is now studying');
  }

  void sleep() {
    print('${this.name} is now sleeping');
  }
}
