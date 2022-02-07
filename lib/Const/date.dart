enum Date{
  today,
  tomorrow,
  dayAfter,
}

extension DateExtention on Date{

  static final date = {
    Date.today    : DateTime.now().day,
    Date.tomorrow : DateTime.now().day + 1,
    Date.dayAfter : DateTime.now().day + 2,
  };

  int get day => date[this]!;
}