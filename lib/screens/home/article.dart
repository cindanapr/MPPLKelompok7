import 'package:flutter/material.dart';


class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Article')),
      body: 
      Text("Penyebab Depresi pada Mahasiswa",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          )
      ),
    );
  }
}