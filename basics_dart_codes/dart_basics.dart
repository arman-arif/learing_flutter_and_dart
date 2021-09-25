// number, string, list, map
// number
// int -> integer
// double -> floating point
// num -> int, double
import 'dart:io';

int variable = 9;
num number1 = 12;
num number2 = 8;

String str = "Arman";

List likeArray = [];
List<String> likeStrArray = [];

Map likeJSObj = {'name': "Arman", 'address': "Khulna"};

var varName = "";

void showName() {
  var str = "Ariful";
  print("Name 1 : $str");
}

int getNum() {
  // code
  return 100;
}

int add(int a, int b) {
  return a + b;
}

int inputIntNum() {
  return int.parse(stdin.readLineSync());
}

class Example {
  // Example() {
  //   print("Constructed");
  // }

  Example({this.num1, this.num2});

  var num1, num2;

  var _name = "It's a private variable";

  String get name => _name;
  set name(String name) => _name = name;

  void show() {
    print("Number 1 : $num1 \nNumber 2 : $num2");
  }
}

void main() {
  //code
  print("Name 2: $str");
  showName();

  var num1 = getNum();
  print("Number: $num1");
  print("Add: ${add(number1, number2)}");

  print("Input a Number");
  num takeANum = inputIntNum();
  print("Show: $takeANum");

  Example exp = new Example(num1: takeANum, num2: 45);

  exp.show();
}
