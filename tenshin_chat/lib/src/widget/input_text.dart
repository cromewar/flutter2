import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  final String inputhintText;
  final double borderShape;
  final Color borderColor;
  final double borderWidth;
  final bool isPassword;

  final ValueChanged<String> onChanged;

  const inputText(
      {this.inputhintText,
      this.borderShape,
      this.borderColor,
      this.borderWidth,
      this.onChanged,
      this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        hintText: inputhintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderShape))),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderShape)),
          borderSide: BorderSide(color: borderColor, width: borderWidth),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderShape)),
            borderSide:
                BorderSide(color: Colors.blueAccent, width: borderWidth)),
      ),
      onChanged: onChanged,
      textAlign: TextAlign.center,
      obscureText: isPassword == null ? false : isPassword,
    );
  }
}
