
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
    );
  }
}
