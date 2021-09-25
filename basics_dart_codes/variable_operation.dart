void main() {
  // types of variables: Numbers, String, Booleans,Lists and Maps

  // A num type variable can hold any kind of number
  num number1 = 120068;
  num number2 = 231803.1516;
  num total1 = number1 + number2;

  // Total of num type Numbers
  print("Total Number: $total1");

  // Integer type numbers
  int number3 = 124578;
  int number4 = 357854;
  int number5 = 654964;
  int total2 = number3 + number4 + number5;

  // Total of Integer numbers
  print("Total Integer: $total2");

  // Double type numbers
  double number6 = 5644.45;
  double number7 = 7954.152;
  double number8 = 20352.5647;
  double total3 = number6 + number7 + number8;

  // Total of Double numbers
  print("Total Doubles: $total3");

  num total4 = number3 + number7 + number8.toInt();

  //Total Number from Double and Integer
  print("Total: $total4");

  //end
}
