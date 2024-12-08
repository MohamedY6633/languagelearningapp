import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../components/phrases.dart';

class phrasespage extends StatelessWidget {
  const phrasespage({super.key});

  @override
  Widget build(BuildContext context) {
    final List <phrases> phrasespage = [
      phrases(
          text1: 'Kōdoku suru koto o wasurenaide kudasai <3',
          text2: 'Don\'t forget to subscribe <3',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/dont_forget_to_subscribe.wav'));
          }),
      phrases(
          text1: 'Puroguramingu ga daisukidesu !',
          text2: 'I love programming !',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/i_love_programming.wav'));
          }),
      phrases(
          text1: 'Kimasu ka ?',
          text2: 'Are you coming ?',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/are_you_coming.wav'));
          }),
      phrases(
          text1: 'Go kibun wa ikagadesu ka ?',
          text2: 'How Are You Feeling ?',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/how_are_you_feeling.wav'));
          }),
      phrases(
          text1: 'Watashi wa anime ga daisukidesu !',
          text2: 'I love anime !',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/i_love_anime.wav'));
          }),
      phrases(
          text1: 'Puroguramingu wa kantandesu ',
          text2: 'Programming is easy ',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/programming_is_easy.wav'));
          }),
      phrases(
          text1: 'Anata no namae wa nandesuka ?',
          text2: 'What\'s your name ?',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/what_is_your_name.wav'));
          }),
      phrases(
          text1: 'Doko ni iku no ?',
          text2: 'Where are you going ?',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/where_are_you_going.wav'));
          }),
      phrases(
          text1: 'Hai, ikimasu !',
          text2: 'Yes im coming !',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/phrases/yes_im_coming.wav'));
          }),

    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'icons/training-phrase.png',
                scale: 12,
              ),
            ),
            const Text(
              'Phrases',
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
        itemCount: phrasespage.length,
        itemBuilder: (context, index) {
          return phrasespage[index];
        },
      ),
    );
  }
}
