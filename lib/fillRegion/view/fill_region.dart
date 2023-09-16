import 'package:aie_task/chooseProfile/view/choose_profile.dart';
import 'package:aie_task/fillName/widgets/custom_text_field.dart';
import 'package:aie_task/fillName/widgets/heading_text.dart';
import 'package:aie_task/fillName/widgets/top_container.dart';
import 'package:flutter/material.dart';

import '../../fillName/widgets/custom_next_button.dart';
import '../../utils/navigator.dart';

class FillRegion extends StatefulWidget {
  const FillRegion({super.key});

  @override
  State<FillRegion> createState() => _FillRegionState();
}

class _FillRegionState extends State<FillRegion> {
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
                      'assets/image/searchingMan.png',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: HeadingText(
                      text: "Welcome Rahul,\nWhat is your region?",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      textController: textController,
                      hintText: 'Enter your region',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              CustomNextButton(size: size,
                ontap: ()=> pushToNextPage(context, const ChooseProfile()),),// Custom Navigator for shorthand
            ],
          ),
        ),
      ),
    );
  }
}
