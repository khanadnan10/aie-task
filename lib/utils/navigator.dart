import 'package:flutter/material.dart';

 pushToNextPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => page),
  );
}
