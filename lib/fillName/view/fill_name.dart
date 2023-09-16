import 'package:aie_task/fillName/widgets/custom_text_field.dart';
import 'package:aie_task/fillName/widgets/heading_text.dart';
import 'package:aie_task/fillRegion/view/fill_region.dart';
import 'package:aie_task/utils/navigator.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_next_button.dart';
import '../widgets/top_container.dart';

class FillName extends StatefulWidget {
  const FillName({super.key});

  @override
  State<FillName> createState() => _FillNameState();
}

class _FillNameState extends State<FillName> {
  final textController = TextEditingController();

  // Disposing the controllers when no longer in use
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
                  /* Seperated all widgets for clean view */
                  TopContainer(
                    size: size,
                    assetImage: const AssetImage(
                      'assets/image/thinkingMan.png',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: HeadingText(
                      text: 'How we should call you?',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      textController: textController,
                      hintText: 'Enter your name',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              CustomNextButton(
                size: size,
                ontap: () => pushToNextPage( 
                  context,
                  const FillRegion(),
                ), // Custom Navigator './utils'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
