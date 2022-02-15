import 'package:flutter/material.dart';
import 'package:flutter_application_brainstrom/screens/loginWithForms.dart';
import 'package:flutter_application_brainstrom/screens/users.dart';

import 'package:google_fonts/google_fonts.dart';

import 'animatedtext.dart';

class IntractiveBoard extends StatelessWidget {
  const IntractiveBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 1, left: 4),
      child: Stack(children: [
        Container(
          height: screenSize.height * 0.3,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SignUpPage.routeName);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: screenSize.width * 0.326,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedTextSignup(
                        word: 'SIGN\n   UP',
                        wsize: 24,
                        atime: 6,
                      ),
                      SizedBox(
                        height: 5,
                        width: screenSize.width * 0.326,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(UserAvailable.routeName);
                },
                child: Container(
                  width: screenSize.width * 0.326,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedTextSignup(
                        word: 'TEMP',
                        wsize: 24,
                        atime: 5,
                      ),
                      SizedBox(
                        height: 5,
                        width: screenSize.width * 0.326,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(color: Colors.blue.shade300),
                ),
              ),
              Container(
                width: screenSize.width * 0.326,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedTextSignup(
                      word: 'SIGN\n   IN',
                      atime: 4,
                      wsize: 24,
                    ),
                    SizedBox(
                      height: 5,
                      width: screenSize.width * 0.326,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.blue.shade500,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(30))),
              ),
            ],
          ),
        ),
        Container(
          width: screenSize.width * 0.75,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: Text('HERE\'S HOW WE \nROLL!',
                style: GoogleFonts.bungeeShade(
                    color: Colors.blueGrey.shade800,
                    fontSize: 28,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ]),
    );
  }
}
