import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemImage extends ConsumerWidget {
  const ItemImage({required this.image, Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$image.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
