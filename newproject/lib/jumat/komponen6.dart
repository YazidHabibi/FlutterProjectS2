import 'package:flutter/material.dart';

class Komponenjumat6 extends StatelessWidget {
  const Komponenjumat6({
    required this.text1,
    required this.icon,
    required this.text2,
    super.key,
  });

  final String text1;
  final String text2;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 210,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 6),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            spacing: 3,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              Text(text1, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(text2, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200, color: Colors.grey.withOpacity(0.6))),
            ],
          ),
        ),
      ),
    );
  }
}
