// class declaration
class Calculator {
  // class varibale declaration
  var number1 = 56;
  var number2 = 80;
  var number3 = 84.9;

  // class function declaration;
  num total() {
    return number1 + number2 + number3;
  }

  void add(var number1, var number2) {
    var total = number1 + number2;
    print("Add: $total");
  }

  void sub(var number1, var number2) {
    var total = number1 - number2;
    print("Sub: $total");
  }

  void div(var number1, var number2) {
    var total = number1 / number2;
    print("Div: $total");
  }

  void multi(var number1, var number2) {
    var total = number1 * number2;
    print("Multi: $total");
  }

  void mod(var number1, var number2) {
    var total = number1 % number2;
    print("Mod: $total");
  }
}

// main function defination
void main() {
  // class object declaration
  Calculator calculator = new Calculator();

  var num1 = 53;
  var num2 = 12;

  calculator.add(num1, num2);
  calculator.sub(num1, num2);
  calculator.div(num1, num2);
  calculator.multi(num1, num2);
  calculator.mod(num1, num2);

  print("Show Total: ${calculator.total()}");
}
