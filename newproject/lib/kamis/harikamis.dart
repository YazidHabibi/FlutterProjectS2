import 'package:flutter/material.dart';
import 'package:newproject/kamis/komponen1.dart';
import 'package:newproject/kamis/komponen2.dart';

class HariKamis extends StatefulWidget {
  const HariKamis({super.key});

  @override
  State<HariKamis> createState() => _HariKamisState();
}

class _HariKamisState extends State<HariKamis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 380,
              color: Colors.blue.shade100,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Container(
                    width: 450,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 350),
                    child: Text('SEMUA PROMO', style: TextStyle(color: Colors.blue),),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Komponenkamis(),
                      Komponenkamis(),
                      Komponenkamis(),
                      Komponenkamis(),
                      Komponenkamis(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Komponenkamis(),
                      Komponenkamis(),
                      Komponenkamis(),
                      Komponenkamis(),
                      Komponenkamis(),
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Komponen2(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, size: 30),
          Icon(Icons.discount, size: 25),
          Icon(Icons.message, size: 25),
          Icon(Icons.shopping_bag_rounded, size: 30),
        ],
      ),
      )
    );
  }
}
