import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scale_animated_text_page.dart';

class TypewriterAnimatedTextPage extends StatefulWidget {
  const TypewriterAnimatedTextPage({Key? key}) : super(key: key);

  @override
  State<TypewriterAnimatedTextPage> createState() =>
      _TypewriterAnimatedTextPageState();
}

class _TypewriterAnimatedTextPageState
    extends State<TypewriterAnimatedTextPage> {
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
                      /// the cursor will be a string
                      TypewriterAnimatedText('Walk beside me',
                          cursor: '////\\\\'),
                      TypewriterAnimatedText('Be my friend', cursor: '||||'),
                      TypewriterAnimatedText('Life is short',
                          cursor: '<|><|><|>'),
                      TypewriterAnimatedText('So many things to do',
                          cursor: '💡'),
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
