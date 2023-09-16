
import 'package:aie_task/utils/color.dart';
import 'package:flutter/material.dart';

class OptionChip extends StatelessWidget {
  final String name;
  const OptionChip({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: klitePurple,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
      ),
    );
  }
}
