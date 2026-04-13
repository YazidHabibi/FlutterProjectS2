import 'package:flutter/material.dart';
import 'package:newproject/jumat/komponen1.dart';
import 'package:newproject/jumat/komponen2.dart';
import 'package:newproject/jumat/komponen3.dart';
import 'package:newproject/jumat/komponen4.dart';
import 'package:newproject/jumat/komponen5.dart';
import 'package:newproject/jumat/komponen6.dart';

class Harijumat extends StatefulWidget {
  const Harijumat({super.key});

  @override
  State<Harijumat> createState() => _HarijumatState();
}

class _HarijumatState extends State<Harijumat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.withOpacity(0.2), Colors.white10],
            begin: Alignment.topRight,
            end: Alignment.center,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Komponenjumat1(),
                SizedBox(height: 10),
                Komponenjumat2(),
                SizedBox(height: 20),
                Komponenjumat3(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Spotlight',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 290, child: Spacer()),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Komponenjumat4(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Plan Ahead',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 320, child: Spacer()),
                    Text(
                      'Tutup',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Komponenjumat5(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Shortcut',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 350, child: Spacer()),
                    Text('Edit', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Komponenjumat6(
                      icon: Icon(Icons.money),
                      text1: 'Kantong Utama',
                      text2: 'Rp50.000',
                    ),
                    Komponenjumat6(
                      icon: Icon(Icons.arrow_circle_up_sharp),
                      text1: 'Investasi',
                      text2: '',
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Komponenjumat6(
                      icon: Icon(Icons.mail_outline),
                      text1: 'Jago Amal',
                      text2: 'Zakat dan Sedekah',
                    ),
                    Komponenjumat6(
                      icon: Icon(Icons.credit_card_rounded),
                      text1: 'Saldo Saya',
                      text2: 'Rp50.000',
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Komponenjumat6(
                      icon: Icon(Icons.ballot_outlined),
                      text1: 'Buat',
                      text2: 'Auto-Budgeting',
                    ),
                    Komponenjumat6(
                      icon: Icon(Icons.handshake_outlined),
                      text1: 'Ajak Teman',
                      text2: 'Undang & dapat bonus!',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Container(
                        width: 210,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              blurRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_circle),
                              Text(
                                'Add Shorcut',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [Icon(Icons.home), Text('Beranda')]),
            Column(children: [Icon(Icons.wallet), Text('Kantong')]),
            Column(children: [Icon(Icons.swap_vert), Text('Transaksi')]),
            Column(
              children: [Icon(Icons.card_membership_sharp), Text('Kartu')],
            ),
            Column(children: [Icon(Icons.linear_scale), Text('Lainnya')]),
          ],
        ),
      ),
    );
  }
}
