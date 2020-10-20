import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainChipText extends StatelessWidget {
  final String text;

  MainChipText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        text ?? '',
        style: TextStyle(
          fontSize: 18,
          color: ConstantColors.lightDark,
        ),
      ),
    );
  }
}
