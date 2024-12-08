import 'package:flutter/material.dart';
import 'package:languagelearningapp/screens/numberspage.dart';
import 'package:languagelearningapp/screens/phrasespage.dart';
import '../components/categoryitem.dart';
import 'Colorspage.dart';
import 'familypage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Parkinsans-Bold',
          ),
        ),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            icon: 'icons/number-blocks.png',
            color: Colors.orange,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const numberspage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            icon: 'icons/love.png',
            color: Colors.green,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const familymembers();
                  },
                ),
              );
            },
          ),
          Category(
              text: 'Colors',
              icon: 'icons/wheel.png',
              color: Colors.purple,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Colorspage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            icon: 'icons/training-phrase.png',
            color: Colors.blueAccent,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const phrasespage();
                  },
                ),
              );
            },
          ),
          const Text('Copy Rights © Mohamed Yahia Zakaria ')
        ],
      ),
    );
  }
}
