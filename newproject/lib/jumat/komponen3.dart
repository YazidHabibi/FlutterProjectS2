import 'package:flutter/material.dart';

class Komponenjumat3 extends StatelessWidget {
  const Komponenjumat3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
                width: 220,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 6),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.attach_money_rounded),
                    Text('Transfer & Bayar', style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
               Container(
                width: 220,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 6),
                  ],
                ),
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code),
                    Text('Scan Qris', style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
                ],
              );
  }
}