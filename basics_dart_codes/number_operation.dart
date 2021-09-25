class NumberOperation {
  NumberOperation({this.num_1st, this.num_2nd});

  num num_1st;
  num num_2nd;

  void nthNumTotal() {
    num total = 0;
    for (var i = num_1st; i <= num_2nd; i++) {
      total = total + i;
    }
    print("Total Nth number: ${total}");
  }

  void nthEvenTotal() {
    num total = 0;
    for (var i = num_1st; i <= num_2nd; i++) {
      if (i % 2 == 0) {
        total = total + i;
      }
    }
    print("Total Even number: ${total}");
  }

  void nthOddTotal() {
    num total = 0;
    for (var i = num_1st; i <= num_2nd; i++) {
      if (i % 2 == 1) {
        total = total + i;
      }
    }
    print("Total Odd number: ${total}");
  }
}

void main() {
  num num1 = 5;
  num num2 = 501;

  NumberOperation num_op = new NumberOperation(num_1st: num1, num_2nd: num2);

  num_op.nthNumTotal();
  num_op.nthEvenTotal();
  num_op.nthOddTotal();
}
