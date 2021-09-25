class StringOperation {
  // List declaration in class
  List<String> information = [
    "Ariful Islam",
    "Digholia, Khulna",
    "Flutter App Development",
    "Royal Mor, Khulna",
    "Student"
  ];

  void info() {
    num i;

    print("Personal Information: ");

    for (i = 0; i < information.length; i++) {
      print(information[i]);
    }
  }

  void stringOperation() {
    num i;
    for (i = 0; i < information.length; i++) {
      if (i == 0) {
        print("\nFirst Name : ${information[i].substring(0, 6)}");
      } else if (i == 1) {
        print("Address Uppercase: ${information[i].toUpperCase()}");
      } else if (i == 2) {
        print("Training: ${information[i].toLowerCase()}");
      } else if (i == 3) {
        print("Location: ${information[i].trim()}");
      }
    }
  }
}

void main() {
  StringOperation str = new StringOperation();

  str.info();
  str.stringOperation();
}
