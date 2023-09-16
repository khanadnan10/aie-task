import 'package:aie_task/chooseProfile/widgets/client_card.dart';
import 'package:flutter/material.dart';
import 'package:aie_task/fillName/widgets/heading_text.dart';
import 'package:aie_task/fillName/widgets/top_container.dart';

import '../../fillName/widgets/custom_next_button.dart';

class ChooseProfileParent extends StatelessWidget {
  const ChooseProfileParent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopContainer(
                    size: size,
                    assetImage: const AssetImage(
                      'assets/image/thinkingMan.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0).copyWith(
                      left: 30,
                      right: 10,
                    ),
                    child: const HeadingText(
                      text: "How you gonna use this app?",
                    ),
                  ),
                  const ClientCard(
                    assetImage: AssetImage('assets/image/parent.png'),
                    desc:
                        "Ready to empower your child's education journey? Choose the parent profile to support and monitor progress.",
                    title: 'Parent',
                  )
                ],
              ),
              CustomNextButton(
                size: size,
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
