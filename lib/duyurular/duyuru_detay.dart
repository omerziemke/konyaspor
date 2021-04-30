import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_izto_app/duyurular/duyuru_ilan_detay.dart';

import 'duyuru_kategorileri.dart';
import 'duyuru_search.dart';

class DuyuruDetay extends StatefulWidget {
  @override
  _DuyuruDetayState createState() => _DuyuruDetayState();
}

class _DuyuruDetayState extends State<DuyuruDetay> {
  bool yildiz = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.green.shade800,
          ),
          backgroundColor: Colors.transparent,
          title: Text("Duyurular",
              style: TextStyle(fontSize: 20, color: Colors.green.shade800)),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DuyuruKategoriSec()));
                }),
          ]),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DuyuruKategoriler()));
        },
        child: Icon(Icons.category),
      ),*/
      body: Container(
        //color: Colors.greenAccent,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DuyuruIlanDetay(
                            baslik: "Transfer İlanı $index",
                          )));
                },
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Container(
                        width: 4,
                        height: 200,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text("20"),
                          Text("Cum"),
                          Text("Nis"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 1,
                        height: 130,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transfer İlanı $index",
                            style: TextStyle(
                                color: Colors.green.shade800, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Ekonomik nedenden dolayı"),
                          Text("transfer yapılmayacaktır..."),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (yildiz == true) {
                                      yildiz = false;
                                    } else {
                                      yildiz = true;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.star,
                                  size: 25,
                                  color: yildiz == true
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.share,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 5,
        ),
      ),
      floatingActionButton: OpenContainer(
        transitionDuration: Duration(seconds: 1),
        openBuilder: (BuildContext context, VoildCallback_) {
          return DuyuruKategoriler();
        },
        closedElevation: 10,
        closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return Container(
            color: Colors.green.shade800,
            width: 60,
            height: 60,
            child: Center(
                child: Icon(
              Icons.category,
              color: Colors.white,
            )),
          );
        },
      ),
    );
  }
}
