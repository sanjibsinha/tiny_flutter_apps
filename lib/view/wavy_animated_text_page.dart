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
                    animatedTexts: [
                      WavyAnimatedText(
                        'Hello World',
                        textStyle: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      WavyAnimatedText('Look at the waves'),
                      WavyAnimatedText('They look so Amazing'),
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
