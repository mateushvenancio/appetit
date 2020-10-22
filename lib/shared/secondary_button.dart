import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color color;

  SecondaryButton(
    this.label, {
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        border: Border.all(
          color: Color(0xFFB8CC3B),
          width: 2,
        ),
      ),
      width: double.infinity,
      height: 45,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(color: Color(0xFFB8CC3B)),
        ),
        color: Colors.transparent,
        disabledColor: Colors.transparent,
        onPressed: onPressed,
      ),
    );
  }
}
