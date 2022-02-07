class Sales{

  int today = 0;
  int tomorrow = 0;
  int dayAfter = 0;

  void setToday(int today){
    this.today = today;
  }

  void setTomorrow(int tomorrow){
    this.tomorrow = tomorrow;
  }

  void setDayAfter(int dayAfter){
    this.dayAfter = dayAfter;
  }

  int sumSales(){
    return today + tomorrow + dayAfter;
  }
}