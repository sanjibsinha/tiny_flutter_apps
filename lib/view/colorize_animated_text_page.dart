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
              AnimatedTextKit(
                /// colorize animated text - a new branch
                ///
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Flutter',
                    textStyle: GoogleFonts.adamina(
                      fontSize: 80.0,
                      color: Colors.lightBlue,
                    ),
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                  ),
                  ColorizeAnimatedText(
                    'Is The',
                    textStyle: GoogleFonts.aclonica(
                      color: Colors.green,
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                  ),
                  ColorizeAnimatedText(
                    'Best Tool',
                    textStyle: GoogleFonts.cairo(
                      color: Colors.red,
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                  ),
                ],
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
