import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static final routeName = '/login-page';

  Widget textFeildTemplate({
    required String feildname,
    required TextInputType keyboardType,
    bool hidetext = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 40,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              maxLines: 1,
              obscureText: hidetext,
              cursorColor: Colors.lightBlue,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  hintText: feildname,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //iconTheme: IconThemeData(color: ),
      ),
      body: Container(
        height: screensize.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'assets/bg_only_blue.png',
                fit: BoxFit.fill,
                height: screensize.height,
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(children: [
                        Text(
                          'Create a new account',
                          style: GoogleFonts.rokkitt(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          ' ,',
                          style: GoogleFonts.rokkitt(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Complete your registration process\nby giving your details ',
                        style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Container(
                            width: screensize.width / 2.5,
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.lightBlue,
                              decoration: InputDecoration(
                                  hintText: 'First name',
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(20)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          SizedBox(
                            width: screensize.width / 21.5,
                          ),
                          Container(
                            width: screensize.width / 2.5,
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.lightBlue,
                              decoration: InputDecoration(
                                  hintText: 'Last name',
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(20)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    textFeildTemplate(
                        feildname: 'Username',
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    textFeildTemplate(
                        feildname: 'Password',
                        hidetext: true,
                        keyboardType: TextInputType.visiblePassword),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    textFeildTemplate(
                        feildname: 'Confrim Password',
                        hidetext: true,
                        keyboardType: TextInputType.visiblePassword),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    textFeildTemplate(
                        feildname: 'Email',
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(
                      height: 28,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.shade700,
                                  Colors.blue.shade300,
                                  Colors.blue.shade100,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 115),
                      child: Row(children: [
                        Text(
                          'have an account?',
                          style: GoogleFonts.rokkitt(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Login.',
                          style: GoogleFonts.rokkitt(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
