import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/ViewModel/view_model.dart';
import 'package:order_support/View/MainPage/AmountForm/amount_form.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final vm = ViewModel();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ViewModel>.value(value: vm),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: const Scaffold(
          body: AmountForm(),
        ),
      ),
    );
  }
}
