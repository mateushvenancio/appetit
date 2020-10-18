import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainRadioTile extends StatelessWidget {
  final String label;
  final Function(int) onChanged;
  final int value;
  final int currentValue;

  MainRadioTile({
    this.label,
    this.onChanged,
    this.value = -1,
    this.currentValue = -1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black.withOpacity(0.4), width: 1),
      ),
      child: Theme(
        data: ThemeData(
          accentColor: ConstantColors.primaryColor,
          unselectedWidgetColor: ConstantColors.primaryColor,
        ),
        child: RadioListTile<int>(
          title: Text(label ?? ''),
          value: value,
          groupValue: currentValue,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
