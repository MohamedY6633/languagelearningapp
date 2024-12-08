import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../components/PartRE.dart';

class numberspage extends StatelessWidget {
  const numberspage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PartRE> Numbers = [
      PartRE(
          text1: 'Ichi',
          text2: 'One',
          photoSRC: 'assets/images/numbers/number_one.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
          }),
      PartRE(
          text1: 'Ni',
          text2: 'Two',
          photoSRC: 'assets/images/numbers/number_two.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_two_sound.mp3'));
          }),
      PartRE(
          text1: 'San',
          text2: 'Three',
          photoSRC: 'assets/images/numbers/number_three.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_three_sound.mp3'));
          }),
      PartRE(
          text1: 'Shi',
          text2: 'Four',
          photoSRC: 'assets/images/numbers/number_four.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_four_sound.mp3'));
          }),
      PartRE(
          text1: 'Go',
          text2: 'Five',
          photoSRC: 'assets/images/numbers/number_five.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_five_sound.mp3'));
          }),
      PartRE(
          text1: 'Roku',
          text2: 'Six',
          photoSRC: 'assets/images/numbers/number_six.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_six_sound.mp3'));
          }),
      PartRE(
          text1: 'Sebun',
          text2: 'Seven',
          photoSRC: 'assets/images/numbers/number_seven.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_seven_sound.mp3'));
          }),
      PartRE(
          text1: 'Hachi',
          text2: 'Eight',
          photoSRC: 'assets/images/numbers/number_eight.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_eight_sound.mp3'));
          }),
      PartRE(
          text1: 'Kyu',
          text2: 'Nine',
          photoSRC: 'assets/images/numbers/number_nine.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_nine_sound.mp3'));
          }),
      PartRE(
          text1: 'Juu',
          text2: 'Ten',
          photoSRC: 'assets/images/numbers/number_ten.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_ten_sound.mp3'));
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'icons/number-blocks.png',
                scale: 12,
              ),
            ),
            const Text(
              'Numbers',
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
        itemCount: Numbers.length,
        itemBuilder: (context, index) {
          return Numbers[index];
        },
      ),
    );
  }
}
