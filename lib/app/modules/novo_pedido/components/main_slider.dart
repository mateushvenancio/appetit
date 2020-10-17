import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainSlider extends StatelessWidget {
  final double padding;
  final String title;
  final int total;
  final int atual;

  MainSlider({
    this.padding,
    this.title,
    this.total = 1,
    this.atual = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 15),
      height: 70,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? '',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                '${atual ?? 1} de ${total ?? 1}',
                style: TextStyle(
                  color: ConstantColors.lightDark,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ConstantColors.primaryColor,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  width: (MediaQuery.of(context).size.width / total) * atual,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
