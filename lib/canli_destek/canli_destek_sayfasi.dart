import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_izto_app/canli_destek/mesaj_sayfasi.dart';

class CanliDestekSayfasi extends StatefulWidget {
  @override
  _CanliDestekSayfasiState createState() => _CanliDestekSayfasiState();
}

class _CanliDestekSayfasiState extends State<CanliDestekSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.green.shade900,
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              "Canlı Destek",
              style: TextStyle(color: Colors.green.shade900),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * (0.13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage("assets/konyaspor.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "KONYASPOR",
                  style: TextStyle(fontSize: 20, color: Colors.green.shade700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: 80,
            color: Colors.green.shade800,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Canlı destek almak için lütfen saat 08:30-17:00 saatleri arasında arayınız...",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
          Image.asset("assets/selim.jpeg"),
          Container(
            width: double.maxFinite,
            height: 80,
            color: Colors.green.shade800,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Mesaj göndermek için lütfen aşağıdaki butona tıklayınız...",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: OpenContainer(
        transitionDuration: Duration(seconds: 1),
        openBuilder: (BuildContext context, VoildCallback_) {
          return MesajSayfasi();
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
              Icons.message,
              color: Colors.white,
            )),
          );
        },
      ),
    );
  }
}
