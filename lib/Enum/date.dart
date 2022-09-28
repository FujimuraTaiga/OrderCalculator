enum Date {
  today,
  tomorrow,
  dayAfter,
}

extension DateExtention on Date {
  static final _year = {
    Date.today: DateTime.now().year,
    Date.tomorrow: DateTime.now().add(const Duration(days: 1)).year,
    Date.dayAfter: DateTime.now().add(const Duration(days: 2)).year,
  };

  static final _month = {
    Date.today: DateTime.now().month,
    Date.tomorrow: DateTime.now().add(const Duration(days: 1)).month,
    Date.dayAfter: DateTime.now().add(const Duration(days: 2)).month,
  };

  static final _day = {
    Date.today: DateTime.now().day,
    Date.tomorrow: DateTime.now().add(const Duration(days: 1)).day,
    Date.dayAfter: DateTime.now().add(const Duration(days: 2)).day,
  };

  int get year => _year[this]!;
  int get month => _month[this]!;
  int get day => _day[this]!;
}
