import 'package:aie_task/fingerprint/widgets/curve_shape.dart';
import 'package:aie_task/utils/color.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
    required this.size,
    required this.assetImage,
  });

  final Size size;
  final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.55,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CurveShape(),
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: kVerticleGradient,
                  ),
                  child: const Image(
                    image: AssetImage('assets/image/pattern2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.21,
                left: size.width * 0.25,
                child: Image(
                  height: 220.0,
                  image: assetImage,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
