import 'package:flutter/cupertino.dart';

import './loginInfo.dart';

class SignUpProvider with ChangeNotifier {
  List<LoginInfo> _userSignUpInfo = [];

  List<LoginInfo> get usersList {
    return [..._userSignUpInfo];
  }

  LoginInfo findUserById(String username) {
    return _userSignUpInfo.firstWhere((prod) => prod.userName == username);
  }

  void addUser(LoginInfo user) {
    final newUser = LoginInfo(
        dateOfBirth: user.dateOfBirth,
        userName: user.userName,
        firstName: user.firstName,
        lastName: user.lastName,
        email: user.email,
        password: user.password);
    _userSignUpInfo.add(newUser);
    notifyListeners();
  }
}
