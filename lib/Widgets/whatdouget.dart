import 'package:flutter/material.dart';
import 'package:flutter_application_brainstrom/Widgets/tabmodel.dart';
import 'package:google_fonts/google_fonts.dart';

class Whatdouget extends StatelessWidget {
  const Whatdouget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: double.infinity,
        height: screensize.height * 0.5,
        color: Colors.red,
        child: Stack(children: [
          Image.asset(
            'assets/blue_bg.png',
            fit: BoxFit.fitHeight,
            height: screensize.height * 0.7,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 4),
              child: Text('WHAT YOU GET FROM \nSIGNING UP?',
                  style: GoogleFonts.bungee(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow.shade800)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 4),
              child: Text('Exciting COUPONS from over 100+ brands!!',
                  style: GoogleFonts.blackOpsOne(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40),
              child: Tabmodel(),
            ),
          ]),
        ]),
      ),
    );
  }
}
