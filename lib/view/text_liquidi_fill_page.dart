import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
                  width: 20.0,
                  height: 100.0,
                ),
                const Text(
                  'Fade: ',
                  style: TextStyle(fontSize: 43.0),
                ),
                const SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                TextLiquidFill(
                  text: 'LIQUIDY',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Colors.redAccent,
                  textStyle: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
