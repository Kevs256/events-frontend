import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final String text;
  final Function() onPressed;

  const ButtonWidget(
      {super.key,
      this.width = 200,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
