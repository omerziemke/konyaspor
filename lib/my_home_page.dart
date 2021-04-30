import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_izto_app/ihalelerimiz_sayfasi.dart';
import 'package:flutter_izto_app/kupalarimiz_sayfasi.dart';
import 'package:flutter_izto_app/online_islemler.dart';
import 'package:flutter_izto_app/sosyal_medya.dart';

import 'file:///D:/src/flutter_uygulama/flutter_izto_app/lib/canli_destek/canli_destek_sayfasi.dart';

import 'draiwer_menu.dart';
import 'duyurular/duyuru_detay.dart';
import 'iletisim.dart';
import 'sosyal_medya.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DraverMenu(),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * (0.3)),
        child: Apbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          primary: false,
          scrollDirection: Axis.vertical,
          children: [
            Duyurular(),
            SosyalMedya(),
            Kupalarim(),
            Iletisim(),
            OnlineIslemler(),
            CanliDestek(),
            Ihalelerimiz()
          ],
        ),
      ),
    );
  }
}

class Ihalelerimiz extends StatelessWidget {
  const Ihalelerimiz({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => IhalelerimizSayfasi()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              child: Icon(
                Icons.animation,
                size: 50,
                color: Colors.green.shade800,
              ),
            ),
            Text(
              "İhalelerimiz",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            ),
          ],
        ),
      ),
    );
  }
}

class CanliDestek extends StatelessWidget {
  const CanliDestek({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CanliDestekSayfasi()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              child: Icon(
                Icons.live_help_sharp,
                size: 50,
                color: Colors.green.shade800,
              ),
            ),
            Text(
              "Canlı Destek",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            )
          ],
        ),
      ),
    );
  }
}

class OnlineIslemler extends StatelessWidget {
  const OnlineIslemler({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => OnlineIslemlerSayfasi()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              child: Icon(
                Icons.online_prediction,
                size: 50,
                color: Colors.green.shade800,
              ),
            ),
            Text(
              "Online İslemler",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            )
          ],
        ),
      ),
    );
  }
}

class Iletisim extends StatelessWidget {
  const Iletisim({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => IletisimSayfasi()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              child: Icon(
                Icons.contact_phone_rounded,
                size: 50,
                color: Colors.green.shade800,
              ),
            ),
            Text(
              "İletisim",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            )
          ],
        ),
      ),
    );
  }
}

class Kupalarim extends StatelessWidget {
  const Kupalarim({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => KupalarimizSayfasi()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              child: Icon(
                Icons.wine_bar_sharp,
                size: 50,
                color: Colors.green.shade800,
              ),
            ),
            Text(
              "Kupalarımız",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            )
          ],
        ),
      ),
    );
  }
}

class SosyalMedya extends StatelessWidget {
  const SosyalMedya({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SosyalMedyaIletisim()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              child: Icon(
                Icons.share,
                size: 50,
                color: Colors.green.shade800,
              ),
            ),
            Text(
              "Sosyal Medya",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            )
          ],
        ),
      ),
    );
  }
}

class Apbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.green.shade800,
      ),
      centerTitle: true,
      flexibleSpace: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          image: DecorationImage(
            image: AssetImage("assets/klup.jpg") != null
                ? AssetImage("assets/klup.jpg")
                : Center(child: CircularProgressIndicator()),
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 5,
    );
  }
}

class Duyurular extends StatelessWidget {
  const Duyurular({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DuyuruDetay()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/duyuru.gif") != null
                      ? AssetImage("assets/duyuru.gif")
                      : Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
            Text(
              "Duyurular",
              style: TextStyle(fontSize: 12, color: Colors.green.shade800),
            ),
          ],
        ),
        decoration: BoxDecoration(
          // border: Border.all(width: 1, color: Colors.green),
          color: Colors.transparent,
        ),
      ),
    );
  }
}
