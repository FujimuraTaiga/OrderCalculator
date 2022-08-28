import 'package:flutter/cupertino.dart';

class ItemImage extends StatelessWidget {
  const ItemImage(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$url.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
