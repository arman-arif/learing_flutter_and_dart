abstract class Calculator {
  num number1, number2;

  num add() {
    return number1 + number2;
  }

  num sub() {
    return number1 - number2;
  }

  num multi() {
    return number1 * number2;
  }

  num div() {
    return number1 / number2;
  }

  num mod() {
    return number1 % number2;
  }
}

class Actions extends Calculator {
  num num1, num2;

  Actions({this.num1, this.num2});

  @override
  num add() {
    return num1 + num2;
  }

  @override
  num sub() {
    return num1 - num2;
  }

  @override
  num multi() {
    return num1 * num2;
  }

  @override
  num div() {
    return num1 / num2;
  }

  @override
  num mod() {
    return num1 % num2;
  }
}

void main() {
  Actions action = new Actions(num1: 45, num2: 12);

  print("Add ${action.add()}");
  print("Add ${action.sub()}");
  print("Add ${action.div()}");
  print("Add ${action.multi()}");
  print("Add ${action.mod()}");
}
