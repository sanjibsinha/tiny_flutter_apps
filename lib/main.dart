import 'package:flutter/material.dart';

import 'view/animated_text_example_app.dart';

void main() => runApp(const AnimatedTextExampleApp());


/* 
  
      AnimatedTextExample(
        label: 'Combination',
        color: Colors.pink,
        child: AnimatedTextKit(
          onTap: onTap,
          animatedTexts: [
            WavyAnimatedText(
              'On Your Marks',
              textStyle: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            FadeAnimatedText(
              'Get Set',
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ScaleAnimatedText(
              'Ready',
              textStyle: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            RotateAnimatedText(
              'Go!',
              textStyle: const TextStyle(
                fontSize: 64.0,
              ),
              rotateOut: false,
              duration: const Duration(milliseconds: 400),
            )
          ],
        ),
      ),
    ];
 */