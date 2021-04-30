import 'package:flutter/material.dart';

class ProfilSayfasiState extends StatefulWidget {
  @override
  _ProfilSayfasiStateState createState() => _ProfilSayfasiStateState();
}

class _ProfilSayfasiStateState extends State<ProfilSayfasiState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text("Profilim",
                style: TextStyle(fontSize: 20, color: Colors.green.shade800))),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Kaydet",
              style: TextStyle(fontSize: 18, color: Colors.green.shade800),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
