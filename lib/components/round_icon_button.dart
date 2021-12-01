import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final IconData icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      child: Icon(icon),
    );
  }
}
