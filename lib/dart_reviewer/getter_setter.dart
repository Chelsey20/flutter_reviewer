void main() {
  var student = Student();
  student.name = "Peter";
  print(student.name);

  student.percentage = 483;
  print(student.percentage);
}

class Student {
  String name = '';
  double _percent = 0; //Private instance variable to its own class

  void set percentage(double marksSecured) =>
      _percent = (marksSecured / 500) * 100;

  double get percentage => _percent;
}
