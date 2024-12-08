import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.icon, this.ontap});
  Color? color;
  String? text;
  String? icon;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 70,
          color: color,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  '$icon',
                  scale: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Parkinsans-Bold',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


