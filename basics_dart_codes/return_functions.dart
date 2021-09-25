String name = "Ariful Islam";
String address = "Digholia, Khulna-9222";
String location = "Khulna";
String position = "Jr. Developer";

void main() {
  print("Integer return type function: ${number()}");

  print("Double total: ${total()}");

  print("Nagad Solution: ${solution()}");

  print("Personal Information: \n${information()}");
}

int number() {
  num number1 = 534.235;
  num number2 = 4832;

  return (number1 + number2).toInt();
}

double total() {
  num salary = 29600;
  num house_rest = salary * 0.4;
  num allounce = 1000;

  return (salary + allounce + house_rest).toDouble();
}

num solution() {
  return (((7.5 * 5000) / (12 * 100)) - ((7.5 * 5000 * 15) / (15 * 100)));
}

String information() {
  return ("Name: " +
      name +
      "\nAddress: " +
      address +
      "\nLocation: " +
      location +
      "\nPosition: " +
      position);
}

returnVarData() {
  var var1 = 809246;
  var var2 = 5934.900;

  return var2 + var1;
}
