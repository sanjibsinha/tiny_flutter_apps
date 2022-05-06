import 'package:flutter/material.dart';

import 'view/animated_text_example_app.dart';

void main() => runApp(const AnimatedTextExampleApp());
/* 


List<AnimatedTextExample> animatedTextExamples({VoidCallback? onTap}) =>
    <AnimatedTextExample>[

      AnimatedTextExample(
        label: 'Scale',
        color: Colors.blue[700],
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 70.0,
            fontFamily: 'Canterbury',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Think'),
              ScaleAnimatedText('Build'),
              ScaleAnimatedText('Ship'),
            ],
            onTap: onTap,
          ),
        ),
      ),
      AnimatedTextExample(
        label: 'Colorize',
        color: Colors.blueGrey[50],
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Larry Page',
              textStyle: _colorizeTextStyle,
              colors: _colorizeColors,
            ),
            ColorizeAnimatedText(
              'Bill Gates',
              textStyle: _colorizeTextStyle,
              colors: _colorizeColors,
            ),
            ColorizeAnimatedText(
              'Steve Jobs',
              textStyle: _colorizeTextStyle,
              colors: _colorizeColors,
            ),
          ],
          onTap: onTap,
        ),
      ),
      AnimatedTextExample(
        label: 'TextLiquidFill',
        color: Colors.white,
        child: TextLiquidFill(
          text: 'LIQUIDY',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.redAccent,
          textStyle: const TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 300,
        ),
      ),
      AnimatedTextExample(
        label: 'Wavy Text',
        color: Colors.purple,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20.0,
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
            onTap: onTap,
          ),
        ),
      ),
      AnimatedTextExample(
        label: 'Flicker',
        color: Colors.pink[300],
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 35,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 7.0,
                color: Colors.white,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FlickerAnimatedText('Flicker Frenzy'),
              FlickerAnimatedText('Night Vibes On'),
              FlickerAnimatedText("C'est La Vie !"),
            ],
            onTap: onTap,
          ),
        ),
      ),
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