import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_izto_app/ayarlar_sayfasi.dart';
import 'package:flutter_izto_app/favoriler.dart';
import 'package:flutter_izto_app/kayit_sayfasi.dart';
import 'package:flutter_izto_app/meclis_%C3%BCyeleri.dart';
import 'package:flutter_izto_app/my_home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class DraverMenu extends StatefulWidget {
  @override
  _DraverMenuState createState() => _DraverMenuState();
}

class _DraverMenuState extends State<DraverMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      child: Container(
        child: Column(
          children: [
            Container(
              color: Colors.green.shade800,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * (0.2),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
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
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.green.shade800,
                      ),
                      title: Text(
                        "AnaSayfa",
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.green.shade800),
                    ),
                  ),
                  Divider(
                    color: Colors.green.shade800,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => KayitSayfasi()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.person, color: Colors.green.shade800),
                      title: Text(
                        "Taraftar Kayıt",
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.green.shade800),
                    ),
                  ),
                  Divider(
                    color: Colors.green.shade800,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FavorilerimSayfasi()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.favorite_border,
                          color: Colors.green.shade800),
                      title: Text(
                        "Favoriler",
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.green.shade800),
                    ),
                  ),
                  Divider(
                    color: Colors.green.shade800,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AyarlarSayfasi()));
                    },
                    child: ListTile(
                      leading:
                          Icon(Icons.settings, color: Colors.green.shade800),
                      title: Text(
                        "Ayarlarım",
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.green.shade800),
                    ),
                  ),
                  Divider(
                    color: Colors.green.shade800,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MeclisUyeleri()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.people, color: Colors.green.shade800),
                      title: Text(
                        "Meclis Üyeleri",
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.green.shade800),
                    ),
                  ),
                  Divider(
                    color: Colors.green.shade800,
                  ),
                  InkWell(
                    onTap: () {
                      alertDialog(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.people, color: Colors.green.shade800),
                      title: Text(
                        "Lisans",
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                      trailing: Icon(Icons.chevron_right,
                          color: Colors.green.shade800),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Sosyal Medyada Biz",
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      color: Colors.green.shade900,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/facebook-icon.png"),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                await launch(
                                    "https://tr-tr.facebook.com/konyaspor/");
                              },
                              child: Text(
                                "Facebook",
                                style: TextStyle(color: Colors.green.shade800),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/instagram.png"),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                await launch(
                                    "https://www.instagram.com/konyaspor/?hl=tr");
                              },
                              child: Text(
                                "Instagram",
                                style: TextStyle(color: Colors.green.shade800),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/twitter2.png"),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () async {
                            await launch(
                                "https://twitter.com/konyaspor?lang=tr");
                          },
                          child: Text(
                            "Twitter",
                            style: TextStyle(color: Colors.green.shade800),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

alertDialog(BuildContext cnt) {
  showDialog(
    context: cnt,
    barrierDismissible: true,
    builder: (cnt) {
      return AlertDialog(
        title: Text(
          "Lisans Sözleşmesi",
          style: TextStyle(fontSize: 20),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                  "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur."),
              Text(
                  "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur."),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.pop(cnt);
              },
              child: Text("Kabul Et")),
          TextButton(
              onPressed: () {
                Navigator.pop(cnt);
              },
              child: Text(
                "Reddet",
                style: TextStyle(color: Colors.red),
              )),
        ],
      );
    },
  );
}
