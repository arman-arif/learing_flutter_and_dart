void information() {
  String name = "Ariful Islam";
  String address = "Digholia, Khulna-9222";
  String location = "Khulna";
  String position = "Jr. Developer";

  // String concatination
  print("Name: " +
      name +
      "\n" +
      "Address: " +
      address +
      "\n" +
      "Location: " +
      location +
      "\n" +
      "Position: " +
      position +
      "\n");
}

void salary() {
  num salary = 29600;
  num liveCost = 10500;
  num foodCost = 7700;
  print("Salary: $salary \nLive Cost: $liveCost \nFood Cost: $foodCost");
}

void main() {
  information();
  salary();
}
