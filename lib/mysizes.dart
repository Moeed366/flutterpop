import 'package:flutter/cupertino.dart';

class MM {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double safeWidth;
  static late double safeHeight;
  static late double scaleFactorWidth;
  static late double scaleFactorHeight;

  //Custom sizes
  static late double x0;
  static late double x2;
  static late double x3;
  static late double x4;
  static late double x5;
  static late double x6;
  static late double x7;
  static late double x8;
  static late double x10;
  static late double x12;
  static late double x14;
  static late double x15;
  static late double x16;
  static late double x17;
  static late double x18;
  static late double x19;
  static late double x20;
  static late double x22;
  static late double x23;
  static late double x24;

  static late double x25;
  static late double x26;
  static late double x28;
  static late double x30;
  static late double x32;
  static late double x34;
  static late double x35;
  static late double x36;
  static late double x38;
  static late double x40;
  static late double x42;
  static late double x44;
  static late double x48;
  static late double x50;
  static late double x52;
  static late double x54;
  static late double x56;
  static late double x60;
  static late double x64;
  static late double x68;
  static late double x72;
  static late double x76;
  static late double x80;
  static late double x90;
  static late double x96;
  static late double x100;
  static late double x110;

  static late double x120;
  static late double x140;
  static late double x160;
  static late double x180;
  static late double x200;
  static late double x220;
  static late double x225;
  static late double x230;
  static late double x240;
  static late double x245;
  static late double x250;
  static late double x260;
  static late double x270;
  static late double x280;
  static late double x285;
  static late double x290;
  static late double x300;
  static late double x310;
  static late double x320;
  static late double x330;
  static late double x340;
  static late double x350;
  static late double x360;
  static late double x370;
  static late double x380;
  static late double x390;
  static late double x400;
  static late double x410;
  static late double x420;
  static late double x430;
  static late double x440;
  static late double x450;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    double _safeAreaWidth =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    double _safeAreaHeight =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeWidth = (screenWidth - _safeAreaWidth);
    safeHeight = (screenHeight - _safeAreaHeight);

    //Scale factor for responsive UI
    scaleFactorHeight = (safeHeight / 820);
    if (scaleFactorHeight < 1) {
      double diff = (1 - scaleFactorHeight) * (1 - scaleFactorHeight);
      scaleFactorHeight += diff;
    }
    scaleFactorWidth = safeWidth / 392;
    if (scaleFactorWidth < 1) {
      double diff = (1 - scaleFactorWidth) * (1 - scaleFactorWidth);
      scaleFactorWidth += diff;
    }

    //Custom sizes
    x0 = 0;
    x2 = scaleFactorHeight * 2;
    x3 = scaleFactorHeight * 3;
    x4 = scaleFactorHeight * 4;
    x5 = scaleFactorHeight * 5;
    x6 = scaleFactorHeight * 6;
    x7 = scaleFactorHeight * 7;
    x8 = scaleFactorHeight * 8;
    x10 = scaleFactorHeight * 10;
    x12 = scaleFactorHeight * 12;
    x14 = scaleFactorHeight * 14;
    x15 = scaleFactorHeight * 15;
    x16 = scaleFactorHeight * 16;
    x17 = scaleFactorHeight * 17;
    x18 = scaleFactorHeight * 18;
    x19 = scaleFactorHeight * 19;
    x20 = scaleFactorHeight * 20;
    x22 = scaleFactorHeight * 22;
    x23 = scaleFactorHeight * 23;
    x24 = scaleFactorHeight * 24;
    x25 = scaleFactorHeight * 25;
    x26 = scaleFactorHeight * 26;
    x28 = scaleFactorHeight * 28;
    x30 = scaleFactorHeight * 30;
    x32 = scaleFactorHeight * 32;
    x34 = scaleFactorHeight * 34;
    x35 = scaleFactorHeight * 35;
    x36 = scaleFactorHeight * 36;
    x38 = scaleFactorHeight * 38;
    x40 = scaleFactorHeight * 40;
    x42 = scaleFactorHeight * 42;
    x44 = scaleFactorHeight * 44;
    x48 = scaleFactorHeight * 48;
    x50 = scaleFactorHeight * 50;
    x52 = scaleFactorHeight * 52;
    x54 = scaleFactorHeight * 54;
    x56 = scaleFactorHeight * 56;
    x60 = scaleFactorHeight * 60;
    x64 = scaleFactorHeight * 64;
    x68 = scaleFactorHeight * 68;
    x72 = scaleFactorHeight * 72;
    x76 = scaleFactorHeight * 76;
    x80 = scaleFactorHeight * 80;
    x90 = scaleFactorHeight * 90;
    x96 = scaleFactorHeight * 96;
    x100 = scaleFactorHeight * 100;
    x110 = scaleFactorHeight * 110;
    x120 = scaleFactorHeight * 120;
    x140 = scaleFactorHeight * 140;
    x160 = scaleFactorHeight * 160;
    x180 = scaleFactorHeight * 180;
    x200 = scaleFactorHeight * 200;
    x220 = scaleFactorHeight * 220;
    x225 = scaleFactorHeight * 225;
    x230 = scaleFactorHeight * 230;
    x240 = scaleFactorHeight * 240;
    x245 = scaleFactorHeight * 245;
    x250 = scaleFactorHeight * 250;
    x260 = scaleFactorHeight * 260;
    x270 = scaleFactorHeight * 270;
    x280 = scaleFactorHeight * 280;
    x285 = scaleFactorHeight * 285;
    x290 = scaleFactorHeight * 290;
    x300 = scaleFactorHeight * 300;
    x310 = scaleFactorHeight * 310;
    x320 = scaleFactorHeight * 320;
    x330 = scaleFactorHeight * 330;
    x340 = scaleFactorHeight * 340;
    x350 = scaleFactorHeight * 350;
    x360 = scaleFactorHeight * 360;
    x370 = scaleFactorHeight * 370;
    x380 = scaleFactorHeight * 380;
    x390 = scaleFactorHeight * 390;
    x400 = scaleFactorHeight * 400;
    x410 = scaleFactorHeight * 410;
    x420 = scaleFactorHeight * 420;
    x430 = scaleFactorHeight * 430;
    x440 = scaleFactorHeight * 440;
    x450 = scaleFactorHeight * 450;
  }

  static double getScaledSizeWidth(double size) {
    return (size * scaleFactorWidth);
  }

  static double getScaledSizeHeight(double size) {
    return (size * scaleFactorHeight);
  }
}

class Spacing {
  static EdgeInsetsGeometry zero = EdgeInsets.zero;

  static EdgeInsetsGeometry only(
      {double top = 0,
      double right = 0,
      double bottom = 0,
      double left = 0,
      bool withResponsive = true}) {
    if (withResponsive) {
      return EdgeInsets.only(
          left: MM.getScaledSizeHeight(left),
          right: MM.getScaledSizeHeight(right),
          top: MM.getScaledSizeHeight(top),
          bottom: MM.getScaledSizeHeight(bottom));
    } else {
      return EdgeInsets.only(
          left: left, right: right, top: top, bottom: bottom);
    }
  }

  static EdgeInsetsGeometry fromLTRB(
      double left, double top, double right, double bottom,
      {bool withResponsive = true}) {
    return Spacing.only(
        bottom: bottom,
        top: top,
        right: right,
        left: left,
        withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry all(double spacing, {bool withResponsive = true}) {
    return Spacing.only(
        bottom: spacing,
        top: spacing,
        right: spacing,
        left: spacing,
        withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry left(double spacing, {bool withResponsive = true}) {
    return Spacing.only(left: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry top(double spacing, {bool withResponsive = true}) {
    return Spacing.only(top: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry right(double spacing,
      {bool withResponsive = true}) {
    return Spacing.only(right: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry bottom(double spacing,
      {bool withResponsive = true}) {
    return Spacing.only(bottom: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry horizontal(double spacing,
      {bool withResponsive = true}) {
    return Spacing.only(
        left: spacing, right: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry vertical(double spacing,
      {bool withResponsive = true}) {
    return Spacing.only(
        top: spacing, bottom: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry symmetric(
      {double vertical = 0,
      double horizontal = 0,
      bool withResponsive = true}) {
    return Spacing.only(
        top: vertical,
        right: horizontal,
        left: horizontal,
        bottom: vertical,
        withResponsive: withResponsive);
  }
}
