import 'package:flutter/material.dart';

class ImportantNewsCard extends StatelessWidget {
  const ImportantNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/news_bg.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        "Iraki Team Wins Khalidji25 Title",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
