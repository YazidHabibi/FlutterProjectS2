import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TestingApi extends StatefulWidget {
  const TestingApi({super.key});

  @override
  State<TestingApi> createState() => _TestingApiState();
}

class _TestingApiState extends State<TestingApi> {
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
      appBar: AppBar(title: Text('Latihan Ambil Data')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: data.take(5).map((item) {
                
                return Container(
                  width: 250,
                  height: 250,
                  color: Colors.red,
                  padding: EdgeInsets.all(20), 
                  child: Column(
                    children: [
                      Image.network(item['images'][0], height: 150,), 
                      Text(item['title'])
                    ],
                  )
                );
              }).toList(),
            ),
    );
  }
}
