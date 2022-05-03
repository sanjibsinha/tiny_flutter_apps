import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextExampleHomePage extends StatefulWidget {
  const AnimatedTextExampleHomePage({Key? key}) : super(key: key);

  @override
  State<AnimatedTextExampleHomePage> createState() =>
      _AnimatedTextExampleHomePageState();
}

class _AnimatedTextExampleHomePageState
    extends State<AnimatedTextExampleHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                width: 20.0,
                height: 100.0,
              ),
              Text(
                'Happy',
                style: GoogleFonts.aclonica(
                  color: Colors.green,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 50.0,
                height: 100.0,
              ),
              DefaultTextStyle(
                style: GoogleFonts.laila(
                  color: Colors.redAccent,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('CODING'),
                    RotateAnimatedText('DARTING'),
                    RotateAnimatedText(
                      'FLUTTERING',
                      textStyle: GoogleFonts.aladin(
                        color: Colors.amber,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  onTap: () {},
                  isRepeatingAnimation: true,
                  totalRepeatCount: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
