import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import './ScaffoldRoute.dart';
import 'Route/routes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      // home: ScaffoldRoute()
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}

