import 'package:flutter/material.dart';
import 'package:flutter_application_brainstrom/provider/signupprovider.dart';
import 'package:flutter_application_brainstrom/screens/aboutus.dart';
import 'package:flutter_application_brainstrom/screens/homescreen.dart';
import 'package:flutter_application_brainstrom/screens/loginWithForms.dart';
import 'package:flutter_application_brainstrom/screens/loginscreen.dart';
import 'package:flutter_application_brainstrom/screens/users.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignUpProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //darkTheme: ThemeData.dark(),
        //theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),

        title: 'Flutter Demo',
        home: HomePage(),
        //initialRoute: '/',
        routes: {
          //'/': (context) => HomePage(),
          LoginScreen.routeName: (context) => LoginScreen(),
          AboutUs.routeName: (context) => AboutUs(),
          SignUpPage.routeName: (context) => SignUpPage(),
          UserAvailable.routeName: (context) => UserAvailable(),
        },
      ),
    );
  }
}
