import 'package:flutter/cupertino.dart';

class ItemImage extends StatelessWidget {
  const ItemImage(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/$url.png"), fit: BoxFit.cover)),
      ),
    );
  }
}
