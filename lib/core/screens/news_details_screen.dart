import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details ..."),
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/news_bg.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0),
                child: ListView(
                  children: const [
                    Text(
                      "Iraki Team Wins Khalidji25 Title",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "The Iraki national football team clinched the prestigious Khaliji25 title in a thrilling final against Oman, held yesterday at El-Basra Stadium. The match was a spectacular display of skill, teamwork, and determination as Irak triumphed with a convincing 3-0 victory. From the first whistle, the Iraki team demonstrated their dominance, launching a series of well-coordinated attacks that put immense pressure on the Omani defense. The first goal came early in the match, setting the tone for the game. Irak continued to build on their momentum, scoring two more goals, much to the delight of their passionate supporters. Oman fought valiantly but was unable to break through Irak’s solid defense or stop their relentless offense. The match highlighted Irak’s tactical superiority and showcased their players’ exceptional talent and teamwork. With this victory, Irak adds another chapter to its rich football history, earning the admiration of fans across the region. The Khaliji25 title win is a testament to the team’s hard work, preparation, and dedication, as well as the unwavering support of their loyal fanbase. The triumph is expected to ignite celebrations across the country and strengthen Irak’s position as a powerhouse in regional football. Congratulations to the Iraki team on this monumental achievement!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
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
