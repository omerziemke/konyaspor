import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class IletisimSayfasi extends StatefulWidget {
  @override
  _IletisimSayfasiState createState() => _IletisimSayfasiState();
}

class _IletisimSayfasiState extends State<IletisimSayfasi> {
  Completer<GoogleMapController> _haritaHazirlayici =
      Completer<GoogleMapController>();

  Map<MarkerId, Marker> _isaretci = <MarkerId, Marker>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              "İletişim",
              style: TextStyle(color: Colors.green.shade900),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
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
                    width: 20,
                  ),
                  Text(
                    "KONYASPOR",
                    style:
                        TextStyle(fontSize: 20, color: Colors.green.shade700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "İLETİŞİM",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * (0.3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/stat3.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Çağrı Merkezi:",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  " 444 42 42",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Maç Saati:",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  " 19:00-21:00",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "İletişim Adresi:",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Parsana Mah, Kaletaş Cad.42250",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Selçuklu/Konya, Türkiye",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Faxs:",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  " 	0(332) 353 68 63",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "E-posta:",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  " 	konya@konyastore.com.tr",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/klup.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Konyaspor Kulübü",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tüm hakları saklıdır. 1922",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.maxFinite,
                height: 400,
                child: GoogleMap(
                  mapType: MapType.normal,
                  markers: Set<Marker>.of(_isaretci.values),
                  initialCameraPosition: CameraPosition(
                    target: LatLng(37.94631, 32.48806),
                    zoom: 15,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _haritaHazirlayici.complete(controller);
                    final MarkerId markerId = MarkerId("Torku Arena");
                    final Marker isaret = Marker(
                      markerId: markerId,
                      position: LatLng(37.94631, 32.48806),
                      infoWindow: InfoWindow(
                        title: "Statyum",
                        snippet: "Torku Arena",
                        onTap: () {},
                      ),
                    );
                    setState(() {
                      _isaretci[markerId] = isaret;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
