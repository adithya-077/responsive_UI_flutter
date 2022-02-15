import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  static final routeName = '/About-us-page';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('about us'),
      ),
      body: Container(
        child: Center(
          child: Text('ABOUT US'),
        ),
      ),
    );
  }
}
