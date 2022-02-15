import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_brainstrom/provider/loginInfo.dart';
import 'package:flutter_application_brainstrom/provider/signupprovider.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);
  static String routeName = 'Signup-page';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _lastName = FocusNode();
  final _userName = FocusNode();
  final _password = FocusNode();
  final _cPassword = FocusNode();
  final _email = FocusNode();
  final passwordCheck = TextEditingController();
  final _form = GlobalKey<FormState>();
  LoginInfo _savedSignUpInfo = LoginInfo(
      email: '',
      firstName: '',
      lastName: '',
      password: '',
      userName: '',
      dateOfBirth: DateTime.now());

  void dispose() {
    _lastName.dispose();
    _cPassword.dispose();
    _password.dispose();
    _userName.dispose();
    super.dispose();
  }

  void saved() {
    final condition = _form.currentState!.validate();
    if (condition) {
      _form.currentState!.save();
      Provider.of<SignUpProvider>(context, listen: false)
          .addUser(_savedSignUpInfo);
    }
  }

  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: Form(
        key: _form,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Sign up',
                style: GoogleFonts.rokkitt(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
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
                      color: Colors.blue),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screensize.width / 2.2,
                    child: TextFormField(
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_lastName);
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.lightBlue.shade100,
                          hintText: 'First name',
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onSaved: (value) {
                        _savedSignUpInfo.firstName = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter First Name ';
                        } else if (value.length > 25) {
                          return 'Limit Reached';
                        } else
                          return null;
                      },
                    ),
                  ),
                  Container(
                    width: screensize.width / 2.2,
                    child: TextFormField(
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_userName);
                      },
                      textInputAction: TextInputAction.next,
                      focusNode: _lastName,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.lightBlue.shade100,
                          hintText: 'Last Name',
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onSaved: (value) {
                        _savedSignUpInfo.lastName = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Last Name ';
                        } else if (value.length > 25) {
                          return 'Limit Reached';
                        } else
                          return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_password);
                },
                focusNode: _userName,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue.shade100,
                  hintText: 'username',
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
                      borderRadius: BorderRadius.circular(20)),
                ),
                onSaved: (value) {
                  _savedSignUpInfo.userName = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter UserName ';
                  } else if (value.length > 15 && value.length < 6) {
                    return 'Username should have words char more than 6 and lesser than 15';
                  } else
                    return null;
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_cPassword);
                },
                focusNode: _password,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.shade100,
                    hintText: 'password',
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
                onSaved: (value) {
                  _savedSignUpInfo.password = value!;
                },
                controller: passwordCheck,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Password ';
                  } else if (value.length < 8) {
                    return 'password should have char more than 8';
                  } else
                    return null;
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_email);
                },
                focusNode: _cPassword,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.shade100,
                    hintText: 'Confrim Password',
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Password ';
                  } else if (value.length < 8) {
                    return 'password should have char more than 8';
                  } else if ((value != passwordCheck.text)) {
                    return 'Enter same password';
                  } else
                    return null;
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                focusNode: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.shade100,
                    hintText: 'Email',
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
                onSaved: (value) {
                  _savedSignUpInfo.email = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Email ';
                  } else if (!value.contains('@')) {
                    return 'enter valid email';
                  } else
                    return null;
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                saved();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Create account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Colors.blue.shade300,
                        Colors.blue.shade200,
                      ])),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
