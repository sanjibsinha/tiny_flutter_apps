import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorizeAnimatedTextPage extends StatefulWidget {
  const ColorizeAnimatedTextPage({Key? key}) : super(key: key);

  @override
  State<ColorizeAnimatedTextPage> createState() =>
      _ColorizeAnimatedTextPageState();
}

class _ColorizeAnimatedTextPageState extends State<ColorizeAnimatedTextPage> {
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
                width: 50.0,
                height: 100.0,
              ),
              DefaultTextStyle(
                style: GoogleFonts.laila(
                  color: Colors.redAccent,
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  /// scale animated text - a new branch
                  ///
                  animatedTexts: [
                    ScaleAnimatedText('Flutter'),
                    ScaleAnimatedText(
                      'Single',
                      textStyle: GoogleFonts.neuton(
                        color: Colors.yellow,
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ScaleAnimatedText(
                      'Codebase',
                      textStyle: GoogleFonts.alice(
                        color: Colors.green,
                        fontSize: 100.0,
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
