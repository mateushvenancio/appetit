import 'dart:ui';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/shared/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class MainCalendario extends StatelessWidget {
  final Function(DateTime) onSelected;
  final DateTime date;

  MainCalendario({@required this.onSelected, this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(color: ConstantColors.lightDark),
        readOnly: true,
        onTap: () {
          showDialog(
            context: context,
            barrierColor: Colors.white.withOpacity(0),
            builder: (context) => AlertDialog(
              content: _MainCalendar(
                onSelected: (value) {
                  if (onSelected != null) {
                    onSelected(value);
                  }
                },
              ),
            ),
          );
        },
        decoration: InputDecoration(
          hintText: date == null
              ? 'Selecione uma data'
              : DateFormat('dd/MM/yyyy').format(date),
          hintStyle: TextStyle(
            color: date == null ? ConstantColors.lightDark : Colors.black,
          ),
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

class _MainCalendar extends StatefulWidget {
  final Function(DateTime) onSelected;

  _MainCalendar({@required this.onSelected});

  @override
  __MainCalendarState createState() => __MainCalendarState();
}

class __MainCalendarState extends State<_MainCalendar> {
  // DateTime _selectedDate = DateTime.now();
  DateTime _selectedDate;
  static const _textStyle = TextStyle(color: Colors.black);
  DateTime _header = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String dataFormatada(DateTime _data) {
      _data = _data ?? DateTime.now();
      return DateFormat('EEEE, dd', 'pt-BR').format(_data)[0].toUpperCase() +
          DateFormat('EEEE, dd', 'pt-BR').format(_data).substring(1) +
          ' de ' +
          DateFormat('MMMM', 'pt-BR').format(_data);
    }

    String capitalize(String _data) {
      _data = _data ?? DateTime.now();
      return _data[0].toUpperCase() + _data.substring(1);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(dataFormatada(_selectedDate)),
        CalendarCarousel(
          customGridViewPhysics: NeverScrollableScrollPhysics(),
          locale: 'pt-BR',
          height: 330,
          width: 300,
          weekendTextStyle: _textStyle,
          headerTextStyle: _textStyle.copyWith(fontSize: 20),
          onCalendarChanged: (v) {
            setState(() {
              _header = v;
            });
          },
          onDayPressed: (v, _) {
            setState(() {
              _selectedDate = v;
            });
          },
          selectedDateTime: _selectedDate,
          selectedDayButtonColor: ConstantColors.primaryColor,
          headerText: capitalize(DateFormat('MMMM', 'pt-BR').format(_header)),
          showOnlyCurrentMonthDate: true,
          todayButtonColor: Colors.transparent,
          todayTextStyle: const TextStyle(color: Colors.black),
          selectedDayTextStyle: const TextStyle(color: Colors.white),
          iconColor: ConstantColors.primaryColor,
          weekdayTextStyle: _textStyle.copyWith(
            color: ConstantColors.lightDark,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 130),
          child: MainButton(
            'confirmar',
            onPressed: _selectedDate != null
                ? () {
                    if (widget.onSelected != null) {
                      widget.onSelected(_selectedDate);
                      Modular.to.pop();
                    }
                  }
                : null,
          ),
        ),
      ],
    );
  }
}
