import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  MainButton(
    this.label, {
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(45)),
      width: double.infinity,
      height: 45,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        color: ConstantColors.primaryColor,
        disabledColor: ConstantColors.primaryColor.withOpacity(0.5),
        onPressed: onPressed,
      ),
    );
  }
}
