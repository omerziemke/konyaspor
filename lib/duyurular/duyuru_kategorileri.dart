import 'package:flutter/material.dart';

class DuyuruKategoriler extends StatefulWidget {
  @override
  _DuyuruKategorilerState createState() => _DuyuruKategorilerState();
}

class _DuyuruKategorilerState extends State<DuyuruKategoriler> {
  bool transfer = false;
  bool forma = false;
  bool yonetim = false;
  bool store = false;
  bool baskanlik = false;
  bool kongre = false;
  bool tum = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Filitrele",
          style: TextStyle(color: Colors.green.shade800),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.green.shade100,
            child: Center(
                child: Text(
              "Duyuru Kategorileri",
              style: TextStyle(fontSize: 20, color: Colors.green.shade800),
            )),
          ),
          Container(
            width: double.infinity,
            height: 500,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Transfer duyuruları",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: transfer,
                        onChanged: (tiklandi) {
                          setState(() {
                            transfer = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Forma duyuruları",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: forma,
                        onChanged: (tiklandi) {
                          setState(() {
                            forma = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Yönetim duyuruları",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: yonetim,
                        onChanged: (tiklandi) {
                          setState(() {
                            yonetim = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Konya Store duyuruları",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: store,
                        onChanged: (tiklandi) {
                          setState(() {
                            store = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Başkanlık duyuruları",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: baskanlik,
                        onChanged: (tiklandi) {
                          setState(() {
                            baskanlik = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Kongre duyuruları",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: kongre,
                        onChanged: (tiklandi) {
                          setState(() {
                            kongre = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Tüm duyurular",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Switch(
                        value: tum,
                        onChanged: (tiklandi) {
                          setState(() {
                            tum = tiklandi;
                          });
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
