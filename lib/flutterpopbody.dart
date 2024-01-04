library flutterpop;

import 'package:flutter/material.dart';
import 'package:flutterpop/pop_element.dart';
import 'package:flutterpop/provider.dart';
import 'package:provider/provider.dart';

import 'model.dart';

export 'enum.dart';
export 'model.dart';

class PopBody extends StatefulWidget {
  const PopBody({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  _PopBodyState createState() => _PopBodyState();
}

class _PopBodyState extends State<PopBody> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PopProvider>(
      create: (context) => PopProvider(),
      child: Consumer<PopProvider>(
        builder: (context, _toastaProvider, child) {
          Widget toastElement = Container();
          if (_toastaProvider.currentToasting != null) {
            toastElement =
                PopElement(element: _toastaProvider.currentToasting!);
          }
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Stack(children: [widget.child, toastElement]));
        },
      ),
    );
  }
}

class PopNotify {
  final BuildContext context;

  PopNotify(this.context);

  toast(PopModel toast) {
    PopProvider toastaProvider =
        Provider.of<PopProvider>(context, listen: false);
    toastaProvider.toast(toast);
  }
}
