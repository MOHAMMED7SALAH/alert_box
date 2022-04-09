import 'package:dialogs_example/page/home_page.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';


void main() => runApp(
  DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    )
        );

class MyApp extends StatelessWidget {
  static final String title = 'Dialogs Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: HomePage(),
      );
}
