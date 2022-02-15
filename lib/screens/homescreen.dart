import 'package:flutter/material.dart';
import 'package:flutter_application_brainstrom/Widgets/123board.dart';
import 'package:flutter_application_brainstrom/Widgets/whatdouget.dart';
import 'package:flutter_application_brainstrom/screens/loginWithForms.dart';

import '../Widgets/catogorybar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  //static final routeName = '/home-page';
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          TextButton(
            style: ButtonStyle(
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(SignUpPage.routeName);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Text(
                '  SIGN UP  ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade100,
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 2,
        title: Stack(children: <Widget>[
          Text(
            'RESPONSIVE',
            style: TextStyle(
              fontSize: 19,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 5
                ..color = Colors.blue.shade600,
            ),
          ),
          Text(
            'RESPONSIVE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: screenSize.height * 0.35,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.asset(
                    'assets/full_top.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ]),
            //listview toogle bar
            CatogryBar(),
            IntractiveBoard(),
            Whatdouget(),
          ],
        ),
      ),
    );
  }
}
