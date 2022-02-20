import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PackPerSalesText extends StatelessWidget {
  const PackPerSalesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final itemDB = FirebaseFirestore.instance.collection('Items');

    return StreamBuilder(
      stream: itemDB.snapshots(),
      builder: (context, AsyncSnapshot snapshot){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: snapshot.data!.doc.map((DocumentSnapshot doc){
            return Text('${doc['name']}: ${doc['price']}円');
          }).toList()
        );
      },
    );
  }
}

/*
Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('牛: 60000円'),
        Text('豚: 70000円'),
        Text('鳥: 60000円'),
      ],
    );
 */