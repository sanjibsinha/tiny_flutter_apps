import 'package:flutter/material.dart';

import 'image_filter_home_page.dart';

class ImageFilterApp extends StatelessWidget {
  const ImageFilterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageFilterHomePage(),
    );
  }
}
