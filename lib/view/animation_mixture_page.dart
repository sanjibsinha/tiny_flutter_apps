import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animated_text_example_app.dart';

class AnimationMixturePage extends StatefulWidget {
  const AnimationMixturePage({Key? key}) : super(key: key);

  @override
  State<AnimationMixturePage> createState() => _AnimationMixturePageState();
}

class _AnimationMixturePageState extends State<AnimationMixturePage> {
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
                DefaultTextStyle(
                  style: GoogleFonts.aclonica(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                  child: AnimatedTextKit(
                    /// adding wavy animation
                    ///
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnimatedTextExampleApp(),
                        ),
                      );
                    },
                    animatedTexts: [
                      WavyAnimatedText(
                        'Beginning',
                        textStyle: GoogleFonts.cairo(
                          color: Colors.red,
                          fontSize: 70.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FadeAnimatedText(
                        'Flutter',
                        textStyle: GoogleFonts.adamina(
                          fontSize: 80.0,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ScaleAnimatedText(
                        'with',
                        textStyle: GoogleFonts.mandali(
                          color: Colors.amber[600],
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RotateAnimatedText(
                        'Dart',
                        textStyle: GoogleFonts.cairo(
                          color: Colors.green,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                        rotateOut: false,
                        duration: const Duration(milliseconds: 400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
