import 'package:aie_task/chooseProfile/view/choose_profile_parent.dart';
import 'package:aie_task/chooseProfile/widgets/client_card.dart';
import 'package:flutter/material.dart';
import 'package:aie_task/fillName/widgets/heading_text.dart';
import 'package:aie_task/fillName/widgets/top_container.dart';

import '../../fillName/widgets/custom_next_button.dart';
import '../../utils/navigator.dart';

class ChooseProfileStudent extends StatelessWidget {
  const ChooseProfileStudent({super.key});

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
                    assetImage: AssetImage('assets/image/student.png'),
                    desc:
                        "Eager to learn and grow? Join as a student to access knowledge, engage with peers, and thrive.",
                    title: 'Student',
                  )
                ],
              ),
              CustomNextButton(
                size: size,
                ontap: () =>
                    pushToNextPage(context, const ChooseProfileParent()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
