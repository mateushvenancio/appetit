import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class MainTextField extends StatefulWidget {
  final String innerText;
  final String labelText;
  final bool isPassword;
  final Function(String) onChanged;

  MainTextField({
    this.innerText,
    this.isPassword = false,
    this.labelText,
    this.onChanged,
  });

  @override
  _MainTextFieldState createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        labelText: widget.labelText ?? null,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ConstantColors.primaryColor),
        ),
        hintText: this.widget.innerText ?? '',
        hintStyle: TextStyle(fontSize: 19),
        focusColor: ConstantColors.primaryColor,
        suffixIcon: widget.isPassword
            ? _obscureText
                ? IconButton(
                    icon: Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
            : null,
      ),
      cursorColor: ConstantColors.primaryColor,
      onChanged: widget.onChanged,
    );
  }
}
