import 'package:flutter/material.dart';

class Komponenjumat4 extends StatelessWidget {
  const Komponenjumat4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 430, height: 200,child: PageView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container( 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.purpleAccent, offset: Offset(0,2), blurRadius: 5,)],
              gradient: LinearGradient(colors: [Colors.purple, Colors.white70],
              begin: Alignment.topRight, 
              end: Alignment.center           
              ),
            ),
          ),
        ), 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container( 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.purpleAccent, offset: Offset(0,2), blurRadius: 5,)],
              gradient: LinearGradient(colors: [Colors.purple, Colors.white70],
              begin: Alignment.topRight, 
              end: Alignment.center           
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container( 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.purpleAccent, offset: Offset(0,2), blurRadius: 5,)],
              gradient: LinearGradient(colors: [Colors.purple, Colors.white70],
              begin: Alignment.topRight, 
              end: Alignment.center           
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container( 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.purpleAccent, offset: Offset(0,2), blurRadius: 5,)],
              gradient: LinearGradient(colors: [Colors.purple, Colors.white70],
              begin: Alignment.topRight, 
              end: Alignment.center           
              ),
            ),
          ),
        ),

      ],
    ),);
  }
}