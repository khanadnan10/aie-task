// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    Key? key,
    required this.ontap,
    required this.size,
  }) : super(key: key);
  final VoidCallback ontap;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      width: size.width,
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPurple,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: const Text('Next'),
      ),
    );
  }
}
