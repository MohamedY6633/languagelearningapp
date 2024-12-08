import 'package:flutter/material.dart';

class PartRE extends StatelessWidget {
  const PartRE({super.key, this.text1, this.text2, this.photoSRC, this.gesture});
  final String? text1;
  final String? text2;
  final String? photoSRC;
  final Function()? gesture;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 80,
        color: const Color(0xffada7a7),
        child: Row(
          children: [
            Container(
              width: 90,
              height: 80,
              color: Colors.white,
              child: Image.asset('$photoSRC'),
            ),
            SizedBox(
              width: 120,
              height: 80,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(text1!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                    child: Text(text2!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 27,
            ),
            IconButton(
                onPressed: gesture,
                icon:
                const Icon(Icons.play_arrow, size: 30)),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    ]);
  }
}
