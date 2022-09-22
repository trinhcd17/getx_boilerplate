class Validators {
  static String? validateEmpty(String? v) {
    if (v!.isEmpty) {
      return "It's empty!";
    } else {
      return null;
    }
  }
}
