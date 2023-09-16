import 'package:aie_task/chooseProfile/view/choose_profile_teacher.dart';
import 'package:aie_task/chooseProfile/widgets/optionChip.dart';
import 'package:aie_task/fillName/widgets/heading_text.dart';
import 'package:aie_task/fillName/widgets/top_container.dart';
import 'package:flutter/material.dart';

import '../../fillName/widgets/custom_next_button.dart';
import '../../utils/navigator.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: HeadingText(
                      text: "How you gonna use this app?",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: OptionChip(
                        name: 'Student',
                      )),
                      Expanded(
                          child: OptionChip(
                        name: 'Teacher',
                      )),
                    ],
                  ),
                  SizedBox(
                    width: size.width / 2,
                    child: const OptionChip(
                      name: 'Parent',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              CustomNextButton(size: size,
                ontap: ()=> pushToNextPage(context, const ChooseProfileTeacher()),),
            ],
          ),
        ),
      ),
    );
  }
}
