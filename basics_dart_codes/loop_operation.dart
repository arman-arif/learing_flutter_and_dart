class LoopNumber {
  LoopNumber({this.i, this.l_num});

  num i;
  num l_num;

  void loopTotal() {
    num total = 0;

    for (var number = this.i; number < this.l_num; number++) {
      total = total + number;
    }

    print("Total: ${total}");
  }
}

main() {
  num num1 = 0;
  num num2 = 145;
  LoopNumber loopNumber = new LoopNumber(i: num1, l_num: num2);

  loopNumber.loopTotal();
}
