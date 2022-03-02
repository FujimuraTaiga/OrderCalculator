enum Date {
  today,
  tomorrow,
  dayAfter,
}

extension DateExtention on Date {
  static final date = {
    Date.today: DateTime.now().day,
    Date.tomorrow: DateTime.now().add(const Duration(days: 1)).day,
    Date.dayAfter: DateTime.now().add(const Duration(days: 2)).day,
  };

  int get day => date[this]!;
}
