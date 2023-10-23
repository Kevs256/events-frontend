import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Icon icon;
  final Function() onPressed;
  final double width;
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    this.width = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: IconButton(
        iconSize: 20.0,
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
