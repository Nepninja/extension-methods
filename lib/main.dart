import 'package:flutter/material.dart';
import 'package:extension_methods/extensions/collection_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> a = [5, 2, 2, 1];
    print("max = ${a.max()} min = ${a.min()} avg=${a.avg()}");

    List<String> names = ["Ram", "Jack", "Jill"];
    print(
        "separated values ${names.joinToString(", ", prefix: "", postfix: " are students at MIT")}");
    return Scaffold(
      body: Text("Hello Extensions!"),
    );
  }
}
