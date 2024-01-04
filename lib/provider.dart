import 'package:flutter/material.dart';

import 'model.dart';

class PopProvider extends ChangeNotifier {
  PopModel? currentToasting;
  List<PopModel> toastQueues = [];

  void check() {
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (toastQueues.isEmpty) {
        currentToasting = null;
      } else {
        currentToasting = toastQueues.first;
      }
      notifyListeners();
    });
  }

  void toast(PopModel toast) {
    toastQueues.add(toast);
    check();
  }

  void pop() {
    toastQueues.removeAt(0);
    currentToasting = null;
    check();
  }
}
