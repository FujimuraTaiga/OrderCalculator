class Money {
  late final int _amount;

  Money(this._amount);

  Money.fromTenThousand(double amount) {
    _amount = (amount * 10000).toInt();
  }

  Money add(Money money) {
    return Money(_amount + money._amount);
  }

  String tenThousand() {
    return '${_amount ~/ 10000}';
  }
}
