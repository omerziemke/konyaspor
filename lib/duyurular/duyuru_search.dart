import 'package:flutter/material.dart';

class DuyuruKategoriSec extends StatefulWidget {
  @override
  _DuyuruKategoriSecState createState() => _DuyuruKategoriSecState();
}

class _DuyuruKategoriSecState extends State<DuyuruKategoriSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
        title: Text(
          "Arama Yap",
          style: TextStyle(color: Colors.green.shade800),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        child: Container(
          color: Colors.teal.shade100,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffix: InkWell(onTap: () {}, child: Text("Ara")),
                      prefixIcon: Icon(
                        Icons.add_to_home_screen,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Duyuru",
                      hintText: "Duyuru adı giriniz...",
                      // border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
