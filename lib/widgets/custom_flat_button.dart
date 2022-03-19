import 'package:flutter/material.dart';
class CustomFlatButton extends ElevatedButton {
  final Color color;
  final Color textColor;
  final String title;
  final VoidCallback onPressed;
  final double radius;
  final IconData icon;

  CustomFlatButton(
      {Key? key, required this.color,
        required this.textColor,
        required this.title,
        required this.onPressed,
        required this.icon,
        required this.radius})
      : super(key: key,
    // disabledColor: Colors.green,
    // color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: textColor,
          size: 20.0,
        ),
        const SizedBox(width: 20.0),
        Text(
          title,
          style: TextStyle(color: textColor),
        )
      ],
    ),
    onPressed: onPressed,
  );
}