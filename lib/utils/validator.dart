class Validator {
  static const String emailPattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253})?[a-zA-Z0-9])*$";

  static bool isEmailValid(String email) {
    var r = RegExp(emailPattern).hasMatch(email);
    return r;
  }

  static String? validateEmail(String? email) {
    RegExp emailRegExp = RegExp(emailPattern);

    if (email == null || email.isEmpty) {
      return 'Email can\'t be empty';
    } else if (!emailRegExp.hasMatch(email)) {
      return 'Enter a correct email';
    }
    return null;
  }
}
