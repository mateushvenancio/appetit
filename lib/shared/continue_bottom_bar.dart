import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContinueBottomBar extends StatelessWidget {
  final bool active;
  final String label;
  final Function onTap;

  const ContinueBottomBar({
    this.active = false,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const _textStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: double.infinity,
      height: active ? 60 : 0,
      child: Material(
        elevation: 4,
        color: ConstantColors.primaryColor,
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap();
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  label ?? '',
                  style: _textStyle,
                ),
                Expanded(child: Container()),
                Text('Avançar', style: _textStyle),
                SizedBox(width: 20),
                Icon(
                  FontAwesomeIcons.chevronRight,
                  size: 15,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
