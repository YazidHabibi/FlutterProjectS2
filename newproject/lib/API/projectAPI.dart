import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Projectapi extends StatefulWidget {
  const Projectapi({super.key});

  @override
  State<Projectapi> createState() => _ProjectapiState();
}

class _ProjectapiState extends State<Projectapi> {
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
      appBar: AppBar(title: Text('LOGO')),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 20),
          SizedBox(
            width: 450,
            height: 230,
            child: PageView(
              children: data.take(5).map((item) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.white, Colors.grey.withOpacity(0.1)],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft
                      ),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(item['images'][0]),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      border: BoxBorder.all(
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: Colors.brown.withOpacity(0.6),
                                border: BoxBorder.all(color: Colors.black.withOpacity(0.4)),
                              ),
                              child: Center(
                                child: Text(item['price'].toString(), style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                          SizedBox(height: 130, child: Spacer()),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                var item = data[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 6,
                  ),
                  child: Container(
                    width: 200,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(13),
                      border: BoxBorder.all(
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 110,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              bottomLeft: Radius.circular(13),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(item['images'][0]),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(item['title'], style: TextStyle(fontWeight: FontWeight.bold),),
                                    Container(
                                      width: 50,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        color: Colors.brown.withOpacity(0.6),
                                        border: BoxBorder.all(
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(item['price'].toString(), style: TextStyle(color: Colors.white),),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  item['description'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
