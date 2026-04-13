import 'package:flutter/material.dart';

class Komponenjumat1 extends StatelessWidget {
  const Komponenjumat1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.javascript_sharp, size: 60,), 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Syariah", style: TextStyle(fontSize: 17),), 
            Text('Jago', style: TextStyle(fontSize: 17),)
          ],
        ),
        SizedBox(width: 260 ,child: Spacer()),
        Icon(Icons.person_pin, size: 35,), 
        SizedBox(width: 8,), 
        Icon(Icons.notifications_rounded, size: 35,)
      ],
      
    );
  }
}