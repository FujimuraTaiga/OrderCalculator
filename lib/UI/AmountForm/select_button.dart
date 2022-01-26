import 'package:flutter/material.dart';
import 'package:order_support/Const/meat.dart';
import 'package:order_support/Model/amount.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Const/when.dart';

class SelectButton extends StatelessWidget {

  final Meat meat;
  final When when;

  const SelectButton(this.meat,this.when,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = context.watch<Amount>();

    return DropdownButton<int>(
      items: items(20),
      value: value(amount),
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
    switch(meat){
      case Meat.beef:
        amount.setBeef(when,num);
        break;
      case Meat.pork:
        amount.setPork(when,num);
        break;
      case Meat.chicken:
        amount.setChicken(when, num);
        break;
    }
  }

  int value(Amount amount){
    switch(meat){
      case Meat.beef:
        return amount.data[when]!.beef;
      case Meat.pork:
        return amount.data[when]!.pork;
      case Meat.chicken:
        return amount.data[when]!.chicken;
    }
  }
}
