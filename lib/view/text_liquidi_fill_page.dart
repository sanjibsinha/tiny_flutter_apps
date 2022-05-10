import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

/// experimenting with liquid fill animation text
///

class TextLiquidiFillPage extends StatelessWidget {
  const TextLiquidiFillPage({Key? key}) : super(key: key);

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
                  width: 50.0,
                  height: 100.0,
                ),
                TextLiquidFill(
                  text: 'LIQUIDY',
                  waveColor: Colors.yellow,
                  boxBackgroundColor: Colors.deepPurple,
                  textStyle: GoogleFonts.laila(
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 250,
                  boxWidth: 350,
                  loadDuration: const Duration(seconds: 10),
                  waveDuration: const Duration(seconds: 6),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
