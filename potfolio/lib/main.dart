import 'package:flutter/material.dart';
import 'package:potfolio/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.purple.shade50,
          useMaterial3: true),
      home: const Portfolio(),
    );
  }
}
