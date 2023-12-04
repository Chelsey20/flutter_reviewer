
void main(){
  addNumber(a: 2, b: 10);
}

void addNumber({ int a = 0, required int b}){
  print('total is ${a+b}');
}


void loopingSample(){

  for (var i = 0; i <= 5; i++) {
    print('hello world $i');
  }
}

