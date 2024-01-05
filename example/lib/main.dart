import 'package:flutter/material.dart';
import 'package:flutterpop/flutterpopbody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopBody(
      child: MaterialApp(
        title: "Flutterpop Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.white,
      body: Center(
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 102),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            width: 1,
                            color: darkMode ? Colors.white : Colors.black),
                      ),
                      child: Text(darkMode ? 'Light Mode' : 'Dark Mode',
                          style: TextStyle(
                              color: darkMode ? Colors.white : Colors.black)),
                      onPressed: () {
                        setState(() {
                          darkMode = !darkMode;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 32.0),
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 2, backgroundColor: Colors.yellowAccent),
                      child: const Text('Message',
                          style: TextStyle(color: Colors.teal)),
                      onPressed: () {
                        flarenotifyfunction(
                            animate_subtitle: true,
                            toastertype: PopNotifyStatus.info,
                            title: "Welcome Back",
                            subtitle: 'Good to see you',
                            context: context);
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text('https://github.com/Moeed366',
                    style: TextStyle(
                        color: darkMode ? Colors.white : Colors.black,
                        fontSize: 20)),
              ]),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void flarenotifyfunction({
    required BuildContext context,
    String? title,
    bool? animate_subtitle,
    required String subtitle,
    required PopNotifyStatus toastertype,
  }) {
    final toast = PopModel(
      titleColor: toastertype == PopNotifyStatus.success
          ? Colors.green
          : (toastertype == PopNotifyStatus.failed ||
                  toastertype == PopNotifyStatus.error)
              ? Colors.red
              : (toastertype == PopNotifyStatus.warning)
                  ? Colors.orange
                  : Colors.black,
      scroll_subtitle: animate_subtitle ?? false,
      height: subtitle == null ? 20 : 50,
      subtitlesize: 17,
      duration: const Duration(seconds: 2),
      title: (title != null && title.isNotEmpty) ? title : null,
      subtitle: (subtitle != null && subtitle.isNotEmpty) ? subtitle : null,
      status: (toastertype == PopNotifyStatus.success)
          ? PopNotifyStatus.success
          : (toastertype == PopNotifyStatus.failed)
              ? PopNotifyStatus.failed
              : (toastertype == PopNotifyStatus.warning)
                  ? PopNotifyStatus.warning
                  : (toastertype == PopNotifyStatus.error)
                      ? PopNotifyStatus.error
                      : PopNotifyStatus.info,
      darkMode: false,
    );
    PopNotify(context).toast(toast);
  }
}
