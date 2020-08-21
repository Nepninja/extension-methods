extension StringExtension on String {
  //will smith => Will Smith
  String capitalize() {
    return this
        .trim()
        .split(" ")
        .where((e) => e.trim().length > 0)
        .map((e) => "${e[0].toUpperCase()}"
            "${e.length > 1 ? e.substring(1).toLowerCase() : ""}")
        .join(" ");
  }

  bool isEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }

  /*
      https://stackoverflow.com/questions/5142103/regex-to-validate-password-strength

       ^                         Start anchor
      (?=.*[A-Z].*[A-Z])        Ensure string has two uppercase letters.
      (?=.*[!@#$&*])            Ensure string has one special case letter.
      (?=.*[0-9].*[0-9])        Ensure string has two digits.
      (?=.*[a-z].*[a-z].*[a-z]) Ensure string has three lowercase letters.
      .{8}                      Ensure string is of length 8.
      $                         End anchor.
   */
  bool isValidPassword() {
    return RegExp(
            r"^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$")
        .hasMatch(this);
  }
}
