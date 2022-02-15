import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextSignup extends StatelessWidget {
  final String word;
  final double wsize;
  final int atime;

  const AnimatedTextSignup({
    Key? key,
    required this.word,
    this.wsize = 38,
    required this.atime,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        RotateAnimatedText(word,
            duration: Duration(seconds: atime),
            //rotateOut: true,
            textStyle: GoogleFonts.bungee(
              fontSize: wsize,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade900,
            ))
      ],
    );
  }
}
