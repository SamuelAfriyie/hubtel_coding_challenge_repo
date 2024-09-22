import 'package:code_challenge/History/presentation/history_screen.dart';
import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'History Page',
      home: HistoryScreen(),
    );
  }
}
