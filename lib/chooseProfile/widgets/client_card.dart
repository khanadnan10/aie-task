
import 'package:flutter/material.dart';

class ClientCard extends StatelessWidget {
  final AssetImage assetImage;
  final String title;
  final String desc;
  const ClientCard({
    Key? key,
    required this.assetImage,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      margin: const EdgeInsets.all(10.0).copyWith(
        bottom: 0,
        top: 0,
        left: 20,
        right: 20,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/optionbgimage.png'),
          fit: BoxFit.contain,
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Image(image: assetImage)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    desc,
                    softWrap: true,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
