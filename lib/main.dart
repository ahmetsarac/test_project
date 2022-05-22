import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: ZirvaApp()));
}

class ZirvaApp extends StatelessWidget {
  const ZirvaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
