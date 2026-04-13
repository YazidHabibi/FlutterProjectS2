import 'package:flutter/material.dart';

class Komponenjumat5 extends StatelessWidget {
  const Komponenjumat5({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 380,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 3)],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Icon(Icons.check_box_outline_blank_outlined, size: 50,),
            ),
            Column(
              spacing: 2 ,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sering Lupa Bayar Tagihan ?'),
                Text('Buat Rencana Pembayaran', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
