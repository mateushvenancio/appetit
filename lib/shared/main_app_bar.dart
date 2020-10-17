import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double padding;

  MainAppBar({
    this.title,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: padding ?? 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: kToolbarHeight,
              child: Row(
                children: [
                  Navigator.canPop(context)
                      ? IconButton(
                          icon: Icon(Icons.chevron_left),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      : Container(),
                ],
              ),
            ),
            Text(
              title ?? '',
              style: TextStyle(
                color: ConstantColors.primaryColor,
                fontSize: 27,
              ),
            ),
            SizedBox(height: 3),
            Container(
              height: 2,
              width: width * 0.75,
              color: Color(0xFFB8CC3B),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 60);
}
