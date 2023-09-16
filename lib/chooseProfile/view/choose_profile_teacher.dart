import 'package:aie_task/chooseProfile/view/choose_profile_student.dart';
import 'package:aie_task/chooseProfile/widgets/client_card.dart';
import 'package:flutter/material.dart';
import 'package:aie_task/fillName/widgets/heading_text.dart';
import 'package:aie_task/fillName/widgets/top_container.dart';

import '../../fillName/widgets/custom_next_button.dart';
import '../../utils/navigator.dart';

class ChooseProfileTeacher extends StatelessWidget {
  const ChooseProfileTeacher({super.key});

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
                    assetImage: AssetImage('assets/image/teacher.png'),
                    desc:
                        "Inspire and educate the future generation. Opt for the teacher profile to share knowledge and mentor students.",
                    title: 'Teacher',
                  )
                ],
              ),
              CustomNextButton(size: size, // Custom Navigator for shorthand
                ontap: ()=> pushToNextPage(context, const ChooseProfileStudent()),),
            ],
          ),
        ),
      ),
    );
  }
}
