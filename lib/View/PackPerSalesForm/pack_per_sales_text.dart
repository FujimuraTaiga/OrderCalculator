import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:order_support/ViewModel/view_model.dart';
import 'package:order_support/Const/item.dart';

class PackPerSalesText extends StatelessWidget {

  const PackPerSalesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<ViewModel>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        Text('牛: ${vm.itemData[Item.beef]!.price}円'),
        Text('豚: ${vm.itemData[Item.pork]!.price}円'),
        Text('鳥: ${vm.itemData[Item.chicken]!.price}円'),
      ],
    );
  }
}

/*
    StreamBuilder(
      stream: itemDB.snapshots(),
      builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: snapshot.data!.docs.map((DocumentSnapshot doc){
            return Text('${doc.get('name')}: ${doc.get('price')}円');
          }).toList(),
        );
      }
    );
 */