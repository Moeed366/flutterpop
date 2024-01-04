import 'package:flutter/material.dart';

import 'enum.dart';

class PopModel {
  double? height;
  double? width;
  BorderRadius? borderRadius;
  bool? darkMode;
  bool? fadeInSubtitle;
  bool animateTitle;
  dynamic title;
  dynamic subtitle;
  double? titlesize;
  double? subtitlesize;
  Color? titleColor;
  Color? subtitleColor;
  Widget? leading;
  Widget? trailing;
  VoidCallback? onTap;
  VoidCallback? onAppear;
  VoidCallback? onExit;
  PopNotifyStatus? status;
  Color? backgroundColor;
  Duration? duration;

  PopModel(
      {this.width,
      this.height,
      this.borderRadius,
      this.title,
      this.subtitle,
      this.leading,
      this.trailing,
      this.titlesize,
      this.subtitlesize,
      this.titleColor,
      this.subtitleColor,
      this.fadeInSubtitle,
      this.animateTitle = true,
      this.onTap,
      this.onAppear,
      this.onExit,
      this.darkMode,
      this.backgroundColor,
      this.status,
      this.duration});
}
