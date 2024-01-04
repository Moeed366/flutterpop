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
  void flarenotifyfunction(BuildContext context,
    {String? title, required String subtitle, required String toastertype}) {
  final toast = PopModel(
    height: title == null ? 30 : null,
    duration: const Duration(seconds: 5),
    title: (title != null && title.isNotEmpty) ? title : null,
    subtitle: (subtitle != null && subtitle.isNotEmpty) ? subtitle : null,
    status: (toastertype == 'S')
        ? PopNotifyStatus.success
        : (toastertype == 'F')
        ? PopNotifyStatus.failed
        : (toastertype == 'W')
        ? PopNotifyStatus.warning
        : PopNotifyStatus.info,
    darkMode: darkMode,
  );
  PopNotify(context).toast(toast);
}
```
