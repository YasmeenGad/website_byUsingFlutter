import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget tablets;
  final Widget desktop;
  final Widget mobileLarge;
  final Widget mobile;

  const Responsive(
      {super.key,
      required this.tablets,
      required this.desktop,
      required this.mobileLarge,
      required this.mobile});
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool istablets(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool ismobilelarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool ismobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700 && tablets != null) {
      return tablets;
    } else if (size.width >= 450 && mobileLarge != null) {
      return mobileLarge;
    } else {
      return mobile;
    }
  }
}
