import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../components/PartRE.dart';

class familymembers extends StatelessWidget {
  const familymembers({super.key});

  @override
  Widget build(BuildContext context) {
    final List <PartRE> familymembers = [
      PartRE(
          text1: 'Chichioya',
          text2: 'Father',
          photoSRC: 'assets/images/family_members/family_father.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/father.mp3'));
          }),
      PartRE(
          text1: 'Musume',
          text2: 'Daughter',
          photoSRC: 'assets/images/family_members/family_daughter.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/daughter.mp3'));
          }),
      PartRE(
          text1: 'Ojisan',
          text2: 'Grand-Father',
          photoSRC: 'assets/images/family_members/family_grandfather.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/grand father.mp3'));
          }),
      PartRE(
          text1: 'Hahaoya',
          text2: 'Mother',
          photoSRC: 'assets/images/family_members/family_mother.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/mother.mp3'));
          }),
      PartRE(
          text1: 'Sobo',
          text2: 'Grand-Mother',
          photoSRC: 'assets/images/family_members/family_grandmother.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/grand mother.mp3'));
          }),
      PartRE(
          text1: 'Nisan',
          text2: 'Older-Brother',
          photoSRC: 'assets/images/family_members/family_older_brother.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/older bother.mp3'));
          }),
      PartRE(
          text1: 'Ane',
          text2: 'Older-Sister',
          photoSRC: 'assets/images/family_members/family_older_sister.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/older sister.mp3'));
          }),
      PartRE(
          text1: 'Musuko',
          text2: 'Son',
          photoSRC: 'assets/images/family_members/family_son.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/son.mp3'));
          }),
      PartRE(
          text1: 'Ototo',
          text2: 'Younger-Brother',
          photoSRC: 'assets/images/family_members/family_younger_brother.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/younger brohter.mp3'));
          }),
      PartRE(
          text1: 'Imouto',
          text2: 'Younger-Sister',
          photoSRC: 'assets/images/family_members/family_younger_sister.png',
          gesture: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/family_members/younger sister.mp3'));
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
                'icons/love.png',
                scale: 12,
              ),
            ),
            const Text(
              'Family Members',
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
        itemCount: familymembers.length,
        itemBuilder: (context, index) {
          return familymembers[index];
        },
      ),
    );
  }
}
