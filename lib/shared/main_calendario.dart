import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCalendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        initialValue: 'Selecione uma data',
        style: TextStyle(color: ConstantColors.lightDark),
        readOnly: true,
        onTap: () {
          showDialog(
            context: context,
            barrierColor: Colors.white.withOpacity(0),
            builder: (context) => AlertDialog(
              content: _MainCalendar(),
            ),
          );
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.calendar_today),
          suffixIcon: Icon(
            FontAwesomeIcons.chevronRight,
            color: ConstantColors.primaryColor,
            size: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: ConstantColors.lightDark,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}

class _MainCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarCarousel(
      height: 350,
      width: 300,
    );
  }
}
