import 'package:flutter/material.dart';
import 'package:news_app/core/screens/news_cards/important_news_card.dart';
import 'package:news_app/core/screens/news_cards/normal_news_tile.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        leading: Image.asset("assets/images/news.png"),
        title: const Text(
          "Welcome to NewsApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Important News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ImportantNewsCard(),
                  ImportantNewsCard(),
                  ImportantNewsCard(),
                ],
              ),
            ),
            const Text(
              "All News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: ListView(
                  children: const [
                    NormalNewsTile(),
                    NormalNewsTile(),
                    NormalNewsTile(),
                    NormalNewsTile(),
                    NormalNewsTile(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
