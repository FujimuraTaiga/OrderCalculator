import 'package:flutter/cupertino.dart';

class FormTitle extends StatelessWidget {

  final double height = 46;

  const FormTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(' '),
          SizedBox(
            height: height,
            child: const Center(child: Text('牛')),
          ),
          SizedBox(
            height: height,
            child: const Center(child: Text('豚')),
          ),
          SizedBox(
            height: height,
            child: const Center(child: Text('鳥')),
          ),
          SizedBox(
            height: height,
            child: const Center(child: Text('売り上げ')),
          ),
        ],
      ),
    );
  }
}
