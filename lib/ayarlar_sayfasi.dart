import 'package:flutter/material.dart';

class AyarlarSayfasi extends StatefulWidget {
  @override
  _AyarlarSayfasiState createState() => _AyarlarSayfasiState();
}

class _AyarlarSayfasiState extends State<AyarlarSayfasi> {
  bool ses = false;
  bool bildirim = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Ayarlar",
          style: TextStyle(fontSize: 20, color: Colors.green.shade800),
        ),
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            child: ExpansionTile(
              key: PageStorageKey("2"),
              title: Text("Bildirim Ayarları"),
              leading: Icon(
                Icons.add_to_home_screen,
                color: Colors.green.shade800,
              ),
              children: [
                Container(
                  height: 75,
                  child: Column(
                    children: [
                      SwitchListTile(
                          title: Text(
                            "Bildirim Kapat/Ac",
                            style: TextStyle(fontSize: 18),
                          ),
                          value: bildirim,
                          onChanged: (tiklandi) {
                            setState(() {
                              bildirim = tiklandi;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            child: ExpansionTile(
              key: PageStorageKey("1"),
              title: Text("Ses Ayarları"),
              leading: Icon(
                Icons.mic,
                color: Colors.green.shade800,
              ),
              children: [
                Container(
                  height: 75,
                  child: Column(
                    children: [
                      SwitchListTile(
                          title: Text(
                            "Ses Kapat/Ac",
                            style: TextStyle(fontSize: 18),
                          ),
                          value: ses,
                          onChanged: (tiklandi) {
                            setState(() {
                              ses = tiklandi;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
