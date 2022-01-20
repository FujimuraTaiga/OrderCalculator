import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Model/amount.dart';
import 'package:order_support/Const/when.dart';
import 'package:order_support/Const/meat.dart';

class SelectButton extends StatelessWidget {

  final Meat meat;
  final When when;

  const SelectButton(this.meat,this.when,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = context.watch<Amount>();
    final data = amount.data[meat]!;

    return DropdownButton<int>(
      items: items(20),
      value: (when == When.today) ? data.today : data.tomorrow,
      onChanged: (int? newValue) => onChanged(amount, newValue!),
    );
  }

  List<DropdownMenuItem<int>> items(int num){
    List<DropdownMenuItem<int>> list = [];
    for(int i = 0;i<num;i++){
      list.add(menuItem(i));
    }
    return list;
  }

  DropdownMenuItem<int> menuItem(int num){
    return DropdownMenuItem<int>(
      child: Text('$num P'),
      value: num,
    );
  }

  void onChanged(Amount amount, int num){
    if(when == When.today){
      amount.setToday(meat,num);
    }else if(when == When.tomorrow){
      amount.setTomorrow(meat,num);
    }
  }
}
