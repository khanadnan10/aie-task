import 'package:flutter/material.dart';

import 'dot.dart';

class BackgroundScanImage extends StatelessWidget {
  const BackgroundScanImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          child: const Image(
            image: AssetImage('assets/image/person.png'),
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          left: 40,
          right: 40,
          child: const SizedBox(
            child: Image(
              image: AssetImage('assets/image/scanframe.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.14,
          left: size.width * 0.5,
          child: const Dot(),
        ),
        Positioned(
          top: size.height * 0.21,
          left: size.width * 0.3,
          child: const Dot(),
        ),
        Positioned(
          top: size.height * 0.21,
          left: size.width * 0.67,
          child: const Dot(),
        ),
        Positioned(
          top: size.height * 0.42,
          left: size.width * 0.32,
          child: const Dot(),
        ),
        Positioned(
          top: size.height * 0.38,
          left: size.width * 0.7,
          child: const Dot(),
        ),
        Positioned(
          top: size.height * 0.52,
          left: size.width * 0.48,
          child: const Dot(),
        ),
        
      ],
    );
  }
}
