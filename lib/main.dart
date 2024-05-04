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
          title: Text('Daftar Mahasiswa'),
          backgroundColor: Color.fromARGB(255, 206, 161, 243), // Mengatur warna latar belakang AppBar
        ),
        body: MahasiswaList(),
      ),
    );
  }
}

class MahasiswaList extends StatelessWidget {
  final String myName = 'Esta Purwanti';
  final String myNIM = 'STI202102181';

  final List<Map<String, String>> mahasiswa = [
    {'name': 'Eki Nurul Hidayah', 'nim': 'STI202102173'},
    {'name': 'Wahyu Tri Suko Yuwono', 'nim': 'STI202102175'},
    {'name': 'Esta Purwanti', 'nim': 'STI202102181'},
    {'name': 'Taufik Rudhanto', 'nim': 'STI202102183'},
    {'name': 'Marentino', 'nim': 'STI202102203'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mahasiswa.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Container(
                color: index == 2 ? Colors.green : null, // Highlight background for your name
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    mahasiswa[index]['name']!,
                    style: TextStyle(
                      fontSize: 16.0, // Set the font size the same for all names
                      color: index == 2 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              leading: Container(
                color: mahasiswa[index]['nim'] == myNIM ? Colors.green : null, // Highlight background for your NIM
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: mahasiswa[index]['nim'] == myNIM ? Colors.green : null,
                  child: Text(
                    mahasiswa[index]['nim']!,
                    style: TextStyle(
                      fontSize: 16.0, // Set the font size the same for all NIMs
                      color: mahasiswa[index]['nim'] == myNIM ? Colors.white : null,
                      fontWeight: FontWeight.bold, // Make all NIMs bold
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
              height: 0,
              thickness: 0.5,
              indent: 16,
              endIndent: 16,
            ),
          ],
        );
      },
    );
  }
}
