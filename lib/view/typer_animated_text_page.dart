import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'typewriter_animated_text_page.dart';

class TyperAnimatedTextPage extends StatefulWidget {
  const TyperAnimatedTextPage({Key? key}) : super(key: key);

  @override
  State<TyperAnimatedTextPage> createState() => _TyperAnimatedTextPageState();
}

class _TyperAnimatedTextPageState extends State<TyperAnimatedTextPage> {
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
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Beginning Flutter with Dart,'),
                      TyperAnimatedText(
                        'Better Flutter,',
                        textStyle: GoogleFonts.cairo(
                          color: Colors.green,
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TyperAnimatedText(
                        'State in Flutter',
                        textStyle: GoogleFonts.mandali(
                          color: Colors.yellow,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const TypewriterAnimatedTextPage(),
                        ),
                      );
                    },
                    pause: const Duration(milliseconds: 1000),
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
