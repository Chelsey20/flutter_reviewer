void main() {
  var dog1 = Dog('Labrador', 'Black');
  print('');
  var dog2 = Dog('Pug', 'Brown');
}

class Animal {
  String color = '';
  Animal(String color) {
    this.color = color;
    print('Animal class constructor');
  }
}

class Dog extends Animal {
  String breed = '';
  Dog(String breed, String color) : super(color) {
    print('Dog class constructor');
  }
}
