import 'package:flutter/material.dart';
import 'package:news_app/core/screens/news_screen.dart';

void main() {
  runApp(
    const NewsApp(),
  );
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsScreen(),
    );
  }
}
