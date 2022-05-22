import 'package:flutter/material.dart';

void main() {
  runApp(const ZirvaApp());
}

class ZirvaApp extends StatelessWidget {
  const ZirvaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(
        body: Center(
          child: Text('Zirva'),
        ),
      ),
    );
  }
}
