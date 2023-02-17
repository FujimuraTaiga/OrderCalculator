import 'package:flutter/material.dart';
import 'package:order_support/UI/Common/Text/text_medeum.dart';

class StoreSettingPage extends StatelessWidget {
  const StoreSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextMedium("text"),
          ],
        ),
      ),
    );
  }
}
