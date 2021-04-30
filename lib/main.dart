import 'package:flutter/material.dart';
import 'package:simkart/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMKART',
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Directionality(
            textDirection: TextDirection.rtl,
            child: Builder(
              builder: (context) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: child,
                );
              },
            ));
      },
      home: Home(),
    );
  }
}
