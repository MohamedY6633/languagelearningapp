import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../components/PartRE.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({super.key});

  @override
  Widget build(BuildContext context) {
    final List <PartRE> Colorspage = [
      PartRE(
          text1: 'Burakku',
          text2: 'Black',
          photoSRC: 'assets/images/colors/color_black.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/black.wav'));
          }),
      PartRE(
          text1: 'Chairo',
          text2: 'Brown',
          photoSRC: 'assets/images/colors/color_brown.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/brown.wav'));
          }),
      PartRE(
          text1: 'Hokori-Ppoi-Kiiro',
          text2: 'Dusty Yellow',
          photoSRC: 'assets/images/colors/color_dusty_yellow.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/dusty yellow.wav'));
          }),
      PartRE(
          text1: 'Gure',
          text2: 'Gray',
          photoSRC: 'assets/images/colors/color_gray.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/gray.wav'));
          }),
      PartRE(
          text1: 'Midori',
          text2: 'Green',
          photoSRC: 'assets/images/colors/color_green.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/green.wav'));
          }),
      PartRE(
          text1: 'Aka',
          text2: 'Red',
          photoSRC: 'assets/images/colors/color_red.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/red.wav'));
          }),
      PartRE(
          text1: 'Shiro',
          text2: 'White',
          photoSRC: 'assets/images/colors/color_white.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/white.wav'));
          }),
      PartRE(
          text1: '	Kiiro',
          text2: 'Yellow',
          photoSRC: 'assets/images/colors/yellow.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/colors/yellow.wav'));
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'icons/wheel.png',
                scale: 12,
              ),
            ),
            const Text(
              'Colors',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Parkinsans-Bold',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: Colorspage.length,
        itemBuilder: (context, index) {
          return Colorspage[index];
        },
      ),
    );
  }
}
