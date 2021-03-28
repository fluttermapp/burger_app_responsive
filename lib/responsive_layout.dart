import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget iphone;
  final Widget ipad;
  final Widget ipadTurned;
  final Widget macbook;

  const ResponsiveLayout({
    Key key,
    this.ipad,
    this.iphone,
    this.ipadTurned,
    this.macbook,
  }) : super(key: key);

  static int iphoneLimit = 640;
  static int ipadLimit = 900;
  static int ipadTurnedLimit = 1200;

  static bool isIphone(BuildContext context) =>
      MediaQuery.of(context).size.width < iphoneLimit;

  static bool isIpad(BuildContext context) =>
      MediaQuery.of(context).size.width < ipadLimit &&
      MediaQuery.of(context).size.width >= iphoneLimit;

  static bool isIpadTurner(BuildContext context) =>
      MediaQuery.of(context).size.width < ipadTurnedLimit &&
      MediaQuery.of(context).size.width >= ipadLimit;

  static bool isMacbook(BuildContext context) =>
      MediaQuery.of(context).size.width >= ipadLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print("MAX WIDTH: ${constraints.maxWidth}");
      print("MAX HEIGHT: ${constraints.maxHeight}");
      if (constraints.maxWidth < iphoneLimit) return iphone;

      if (constraints.maxWidth < ipadLimit) return ipad;

      if (constraints.maxWidth < ipadTurnedLimit)
        return ipadTurned;
      else {
        return macbook;
      }
    });
  }
}
