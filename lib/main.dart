import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newsly_app/core/screens/news_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDTviih_hIpzCZkh291X1HiTson_bbOapU",
      appId: "1:776324892066:android:398efb430b9ff61ea7defb",
      messagingSenderId: "",
      projectId: "newsly-app-c4e30",
    ),
  );
  runApp(
    const NewslyApp(),
  );
}

class NewslyApp extends StatelessWidget {
  const NewslyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsScreen(),
    );
  }
}
