import 'package:aie_task/utils/color.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
        color: kPurple,
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
