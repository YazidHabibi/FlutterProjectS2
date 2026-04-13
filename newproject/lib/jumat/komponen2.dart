import 'package:flutter/material.dart';

class Komponenjumat2 extends StatelessWidget {
  const Komponenjumat2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        // width: 470,
        // height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 5)],
        ),
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.money),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kantong Utama',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        spacing: 3,
                        children: [
                          Text(
                            '123456789',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.copy, size: 18),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 200, child: Spacer()),
                  Row(
                    spacing: 5,
                    children: [Text('Rp50.000',  style: TextStyle(fontWeight: FontWeight.bold)), Icon(Icons.visibility_off)],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 430,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: BoxBorder.all(width: 2, color: Colors.grey),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Aktivitas Terakhir'),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
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
