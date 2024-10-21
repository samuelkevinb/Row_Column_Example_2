import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Card'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            width: 240,
            height: 300,
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  child: Image.network(
                    "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding( // Menggunakan Padding untuk memberi ruang pada konten
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded( // Memastikan teks memiliki ruang yang cukup
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Umbrella for Sale", // Memperbaiki ejaan dari "Umberla" menjadi "Umbrella"
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text("200 bought this")
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.5"),
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding( // Menggunakan Padding untuk memberi ruang pada tombol
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: Text("Add To Cart"),
                        onPressed: () {
                          // Tambahkan aksi untuk tombol ini
                        },
                      ),
                      ElevatedButton(
                        child: Text("Buy Now"),
                        onPressed: () {
                          // Tambahkan aksi untuk tombol ini
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
