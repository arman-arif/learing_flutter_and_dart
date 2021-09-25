void main() {
  int number = 123;
  double number2 = 321.456;
  int number3 = 334;
  String name = "Ariful Islam";
  print("Total: ${number + number2 + number3},\nName: $name");

  var num1 = 345;
  var num2 = 325.234;
  var num3 = 2345;
  var total = num1 + num2 + num3;
  print("Total var: $total");

  add();
  sum();
}

void add() {
  var num1 = 903;
  var num2 = 80.2334;
  print("Add var Total: ${num1 + num2}");
}

sum() {
  var num1 = 453;
  var num2 = 843;
  print("Sum: ${num1 + num2}");
}
