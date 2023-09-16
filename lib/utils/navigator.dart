import 'package:flutter/material.dart';

// Custom Navigator for shorthand
 pushToNextPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => page),
  );
}
