class LoginInfo {
  String userName;
  String password;
  String email;
  String firstName;
  String lastName;
  DateTime dateOfBirth;

  LoginInfo({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.userName,
    required this.dateOfBirth,
  });
}
