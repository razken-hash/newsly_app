import 'package:flutter/material.dart';
import 'package:newsly_app/core/screens/news_details_screen.dart';

class NormalNewsTile extends StatelessWidget {
  const NormalNewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NewsDetailsScreen(),
          ),
        );
      },
      child: Container(
        height: 100,
        alignment: Alignment.bottomLeft,
        margin: const EdgeInsets.only(bottom: 5),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 130,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/news_bg.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: Text(
                "Iraki Team Wins Khalidji25 Title, By Scoring 3 Goals Against Oman.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
