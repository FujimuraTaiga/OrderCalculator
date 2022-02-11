import 'package:flutter/material.dart';
import 'package:order_support/Const/size.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Const/item.dart';
import 'package:order_support/Const/date.dart';

import 'package:order_support/ViewModel/view_model.dart';

class SelectButton extends StatelessWidget {

  final Date date;
  final Item item;

  const SelectButton(this.date, this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<ViewModel>(context);

    return SizedBox(
      width: WidgetSize.amountForm.width,
      child: DropdownButton<int>(
        items: items(20),
        value: value(vm),
        onChanged: (int? newValue) => onChanged(vm, newValue!),
      ),
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

  int value(ViewModel vm){
    int value = 0;
    switch(date){
      case Date.today:
        value = vm.itemData[item]!.today;
        break;
      case Date.tomorrow:
        value = vm.itemData[item]!.tomorrow;
        break;
      case Date.dayAfter:
        value = vm.itemData[item]!.order;
        break;
    }
    return value;
  }

  void onChanged(ViewModel vm, int amount){
    switch(date){
      case Date.today:
        vm.setTodayAmount(item, amount);
        break;
      case Date.tomorrow:
        vm.setTomorrowAmount(item, amount);
        break;
      case Date.dayAfter:
        break;
    }
  }
}
