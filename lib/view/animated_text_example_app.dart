import 'package:flutter/material.dart';
import 'text_liquidi_fill_page.dart';

class AnimatedTextExampleApp extends StatelessWidget {
  const AnimatedTextExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const TextLiquidiFillPage(),
    );
  }
}
