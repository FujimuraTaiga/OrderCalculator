import 'package:flutter/material.dart';

import '../Common/Text/text_small.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    required this.icon,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final Icon icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        child: Card(
          elevation: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(flex: 1, child: icon),
                  Flexible(flex: 1, child: Container()),
                  Flexible(flex: 4, child: TextSmall(text)),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
