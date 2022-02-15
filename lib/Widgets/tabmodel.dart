import 'dart:math';

import 'package:flutter/material.dart';

class Tabmodel extends StatefulWidget {
  const Tabmodel({Key? key}) : super(key: key);

  @override
  _TabmodelState createState() => _TabmodelState();
}

class _TabmodelState extends State<Tabmodel> {
  double rangle = 0.0;
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          rangle = 0.0;
        });
      },
      onTap: () {
        setState(() {
          rangle = pi / 2;
        });
      },
      child: Transform.rotate(
        angle: rangle,
        origin: Offset(0.0, 0.0),
        child: Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade200,
          ),
          child: Column(children: [
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: Row(children: [
                Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Container(
                  height: 4,
                  width: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                height: 200,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade900,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
