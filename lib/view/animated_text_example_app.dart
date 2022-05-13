import 'package:flutter/material.dart';
import 'animation_mixture_page.dart';

class AnimatedTextExampleApp extends StatelessWidget {
  const AnimatedTextExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const AnimationMixturePage(),
    );
  }
}
