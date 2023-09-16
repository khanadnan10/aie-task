import 'package:aie_task/fingerprint/widgets/curve_shape.dart';
import 'package:aie_task/utils/color.dart';
import 'package:flutter/material.dart';

class FingerPrint extends StatelessWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: CurveShape(),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  gradient: kVerticleGradient,
                ),
                child: const Image(
                  image: AssetImage('assets/image/pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Image(
              image: AssetImage('assets/image/fingerprint.png'),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              ' 28%',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Touch the sensor',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'Put your finger on the sensor and lift after you feel\nvibration.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
