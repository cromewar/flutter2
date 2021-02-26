class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return "Too short pass";
    } else {
      return null;
    }
  }
}
