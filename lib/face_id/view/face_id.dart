import 'package:aie_task/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/background_scan_image.dart';

class FaceId extends StatelessWidget {
  const FaceId({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackgroundScanImage(size: size),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(25.0),
                height: 200,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Look Left',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    Text(
                      'Keep your face in the frame.',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Text(
                      '30%',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: kGradient,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
