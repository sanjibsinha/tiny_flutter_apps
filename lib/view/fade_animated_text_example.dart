import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'typer_animated_text_page.dart';

class FadeAnimatedTextExample extends StatefulWidget {
  const FadeAnimatedTextExample({Key? key}) : super(key: key);

  @override
  State<FadeAnimatedTextExample> createState() =>
      _FadeAnimatedTextExampleState();
}

class _FadeAnimatedTextExampleState extends State<FadeAnimatedTextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
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
                  'Fade: ',
                  style: GoogleFonts.adamina(
                    fontSize: 20.0,
                    color: Colors.lightBlue,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'NOW!',
                      textStyle: GoogleFonts.aclonica(
                        color: Colors.green,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FadeAnimatedText(
                      'AT ONCE!!',
                      textStyle: GoogleFonts.cairo(
                        color: Colors.red,
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FadeAnimatedText(
                      'OR NEVER!!!',
                      textStyle: GoogleFonts.mandali(
                        color: Colors.yellow,
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  onFinished: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TyperAnimatedTextPage(),
                      ),
                    );
                  },
                  totalRepeatCount: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
