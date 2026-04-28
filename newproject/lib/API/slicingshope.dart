import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Slicingshope extends StatefulWidget {
  const Slicingshope({super.key});

  @override
  State<Slicingshope> createState() => _SlicingshopeState();
}

class _SlicingshopeState extends State<Slicingshope> {
  List data = [];
  bool isLoading = true;
  Future ambilData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      var hasil = jsonDecode(response.body);
      setState(() {
        data = hasil['products'];
        isLoading = false;
      });
    } else {
      throw Exception('gagal mengambil data');
    }
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(1, 1),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 360,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          spacing: 7,
                          children: [
                            Icon(Icons.search),
                            Text(
                              'Cari Disini',
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                            SizedBox(width: 200, child: Spacer()),
                            Icon(Icons.camera_alt_outlined),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  Icon(Icons.message_outlined, color: Colors.white),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                children: data.take(10).map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 5,
                    ),
                    child: Container(
                      width: 230,
                      height: 270,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Image.network(item['images'][0]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item['title']),
                                Text(
                                  item['price'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 17
                                  ),
                                ),
                                Container(
                                  width: 60, 
                                  height: 22, 
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30), 
                                    
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text('⭐', style: TextStyle(fontSize: 15),), 
                                      Text(item['rating'].toString(), style: TextStyle(fontSize: 15),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
