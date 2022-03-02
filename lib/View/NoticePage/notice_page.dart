import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('''2022/02/24【アップデート】豚→牛→鳥の順番に変更しました。'''),
        ],
      ),
    );
  }
}
