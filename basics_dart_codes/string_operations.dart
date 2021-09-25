void main() {
  String str1 = "Mobile App Development with Flutter";
  print(str1);

  String name = "Ariful Islam";
  String address = "Digholia, Khulna";
  String position = "Jr. App Developer";
  String posting = "Royel Mor, Khulna";

  // String to UpperCase
  print(
      "\nName: ${name.toUpperCase()} \nAddress: ${address.toUpperCase()} \nPosition: ${position.toUpperCase()} \nPosting: ${posting.toUpperCase()}");

  // String to LowerCase
  print(
      "\nName: ${name.toLowerCase()} \nAddress: ${address.toLowerCase()} \nPosition: ${position.toLowerCase()} \nPosting: ${posting.toLowerCase()}\n");

  // Use of substring() function
  print(
      "First Name: ${name.substring(0, 6)} \nLast Name: ${name.substring(7, name.length)}");

  // String Length
  print(
      "\nString Length: \nName -> ${name.length} \nAddress -> ${address.length} \nPosition -> ${position.length} \nPosting -> ${posting.length}\n");
}
