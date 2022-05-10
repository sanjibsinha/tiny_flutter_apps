import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scale_animated_text_page.dart';

class WavyAnimatedTextPage extends StatefulWidget {
  const WavyAnimatedTextPage({Key? key}) : super(key: key);

  @override
  State<WavyAnimatedTextPage> createState() => _WavyAnimatedTextPageState();
}

class _WavyAnimatedTextPageState extends State<WavyAnimatedTextPage> {
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
                    animatedTexts: [
                      WavyAnimatedText(
                        'Flutter',
                        textStyle: GoogleFonts.cairo(
                          color: Colors.green,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      WavyAnimatedText(
                        'Is Beautiful',
                        textStyle: GoogleFonts.mandali(
                          color: Colors.amber[600],
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      WavyAnimatedText(
                        'Isn\'t it?',
                        textStyle: const TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScaleAnimatedTextPage(),
                        ),
                      );
                    },
                    pause: const Duration(milliseconds: 100),
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
