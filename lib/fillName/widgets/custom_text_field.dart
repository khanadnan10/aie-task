import 'package:aie_task/utils/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 171, 171, 171),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: klitePurple,
        contentPadding: const EdgeInsets.all(16.0),
      ),
    );
  }
}
