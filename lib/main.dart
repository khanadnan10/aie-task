import 'package:aie_task/face_id/view/face_id.dart';
import 'package:aie_task/fillName/view/fill_name.dart';
import 'package:aie_task/fingerprint/view/fingerprint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AIE TASK',
      home:  FillName(), // Use the below commented route to look for other pages
      // home: FaceId(),
      // home: FingerPrint(),
      // Redirecting to fill name page as there wasn't any button on "FACEID" & " FINGERPRINT" Screens.
    );
  }
}