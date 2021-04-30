import 'package:flutter/material.dart';

class FavorilerimSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Favorilerim",
          style: TextStyle(fontSize: 20, color: Colors.green.shade800),
        ),
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
      ),
      body: Container(),
    );
  }
}
