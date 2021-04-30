import 'package:flutter/material.dart';

import 'my_home_page.dart';
import 'stepper_kullanimi.dart';

class KayitSayfasi extends StatefulWidget {
  @override
  _KayitSayfasiState createState() => _KayitSayfasiState();
}

class _KayitSayfasiState extends State<KayitSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kullanıcı Kayıt",
          style: TextStyle(color: Colors.green.shade800),
        ),
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text(
                "Kaydet",
                style: TextStyle(fontSize: 18, color: Colors.green.shade800),
              ))
        ],
      ),
      body: StepperKullanimi(),
    );
  }
}
