import 'package:flutter/material.dart';

class Komponenkamis extends StatelessWidget {
  const Komponenkamis({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Text('DUMMY' ,style: TextStyle(fontSize: 10),)
      ],
    );
  }
}
