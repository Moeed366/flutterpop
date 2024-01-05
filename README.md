# flutterpop
<div style="display: flex; justify-content: center; align-items: center;">
    <img width="275" height="520" alt="0 Mobile" src="https://github.com/Moeed366/flutterpop/blob/main/ss/mobile.png?raw=true">
      <img width="675" alt="1 Web" src="https://github.com/Moeed366/flutterpop/blob/main/ss/web.png?raw=true">
</div>



## How to use

Step 1: Add to pubspec.yaml

```
flutter pub add flutterpop
```

Step 2: Wrap your `MaterialApp` to `PopBody`

```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopBody( // Wrap your app by ToastaContainer
      child: MaterialApp(
        ...
      ),
    );
  }
}
```

Step 3: Start using

```dart
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
```
``` failed, warning, success, info, error  enum added to show prefix icons```