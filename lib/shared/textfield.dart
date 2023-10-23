import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isDesc;

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    this.isDesc = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding:
            isDesc ? const EdgeInsets.symmetric(vertical: 20.0) : null,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
