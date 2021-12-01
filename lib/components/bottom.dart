import 'package:flutter/cupertino.dart';

import '../costanse.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key, this.onTap, required this.bottomTitle})
      : super(key: key);
  final onTap;
  final String bottomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            bottomTitle,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        height: 80,
        width: double.infinity,
        color: bottomContainerColor,
      ),
    );
  }
}
