import 'package:flutter/material.dart';

class ExplainPage extends StatelessWidget {
  const ExplainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('''
          【使い方】
          1. ’金額入力’ページで売上予測と
              1パックあたり金額を入力。
              
          2. ’変更’ボタンを押す。
          
          3. ’発注数’ページで今日の在庫と
             明日届く分の数を入力。
             
          4. ’発注数’を参考にしながら発注。
          '''),
        ],
      ),
    );
  }
}
