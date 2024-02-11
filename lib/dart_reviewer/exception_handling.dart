void main() {
  print('case 1');
  try {
    int result = 12 ~/ 0;
  } on UnsupportedError {
    print('Cannot divide by zero');
  }

  print('case 2');
  try {
    int result = 12 ~/ 0;
  } catch (e) {
    print('The thrown exception is $e');
  }

  print('case 3');
  try {
    int result = 12 ~/ 0;
  } catch (e, s) {
    print('STACK TRACE \n $s');
  }

  print('case 4');
  try {
    int result = 12 ~/ 3;
  } catch (e) {
    print('The thrown exception is $e');
  } finally {
    print('always executed');
  }

  print('Case 5: custom exception');
  try {
    depositMoney(-200);
  } on DepositException {
    DepositException e = DepositException();
    print(e.errorMessage());

    // catch (e) {
    //   DepositException e = DepositException();
    //   print(e.errorMessage());
  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw DepositException();
  }
}
