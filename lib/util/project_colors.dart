import 'package:flutter/painting.dart';

class ProjectColors {
  // Colors from Figma
  static const Color jetBlack = Color.fromRGBO(41, 45, 50, 1);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color pacificBlue = Color.fromRGBO(43, 184, 214, 1);
  static const Color spanishGrey = Color.fromRGBO(154, 154, 154, 1);
  static const Color rhythm = Color.fromRGBO(124, 129, 160, 1);
  static const Color paradisePink = Color.fromRGBO(234, 82, 111, 1);
  static const Color hanPurple = Color.fromRGBO(45, 47, 240, 1);
  static const Color darkSeaGreen = Color.fromRGBO(138, 191, 143, 1);
  static const Color mediumSeaGreen = Color.fromRGBO(55, 183, 108, 1);
  static const Color davyGrey = Color.fromRGBO(86, 86, 89, 1);
  static const Color maizeCrayola = Color.fromRGBO(254, 202, 85, 1);

  static const primary = pacificBlue;
  static const stroke = Color.fromRGBO(48, 50, 61, 0.2);
  static const muted = rhythm;
  static Color overlay = primary.withAlpha(10);
  static const buttonText = rhythm;
  static const red = paradisePink;

  // Assignment Progress Colors
  static const Color overDue = primary;
  static Color hasNotStarted = paradisePink;
  static Color inProgress = darkSeaGreen;
  static const Color completed = stroke;

  // SnackBar Colors
  static const Color success = darkSeaGreen;
  static const Color info = primary;
  static const Color warning = maizeCrayola;
  static const Color error = paradisePink;
}
