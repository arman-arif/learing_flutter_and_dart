import 'dart:io';

void main() {
  // print any int number for loop
  print("Enter any number: ");
  int iloop = int.parse(stdin.readLineSync());
  num total = 0;

  for (var i = 0; i <= iloop; i++) {
    total = total + i;
  }

  print("Total Number: ${total}");
}
