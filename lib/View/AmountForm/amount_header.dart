import 'package:flutter/cupertino.dart';
import 'package:order_support/Const/size.dart';

class FormHeader extends StatelessWidget {

  final double height = 46;

  const FormHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: const Text(''),
        ),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: const Text('今の在庫'),
        ),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: const Text('明日の納品'),
        ),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: const Center(child: Text('発注数')),
        ),
      ],
    );
  }
}
