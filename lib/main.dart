import 'package:flutter/material.dart';
import 'package:salud_dominicana/src/list_page.dart';
import 'package:flutter_riverpod/all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
          title: 'Salud Dominicana',
          theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListPage(),
    )
    );
  }
}
