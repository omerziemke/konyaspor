import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SosyalMedyaIletisim extends StatefulWidget {
  @override
  _SosyalMedyaIletisimState createState() => _SosyalMedyaIletisimState();
}

class _SosyalMedyaIletisimState extends State<SosyalMedyaIletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Sosyal Medya",
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
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * (0.3),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/klup.jpg"), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sosyal Medyada Bizi",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Takip Edebilirsiniz",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.green.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    launch("https://tr-tr.facebook.com/konyaspor/");
                  },
                  child: Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/facebook-icon.png"),
                            fit: BoxFit.cover,
                          )),
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    launch("https://twitter.com/konyaspor?lang=tr");
                  },
                  child: Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                image: AssetImage("assets/twitter2.png"),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Twitter",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    launch("https://www.instagram.com/konyaspor/?hl=tr");
                  },
                  child: Container(
                    width: 100,
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/instagram.png"),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Instagram",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
