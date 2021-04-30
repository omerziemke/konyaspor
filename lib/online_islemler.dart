import 'package:flutter/material.dart';

class OnlineIslemlerSayfasi extends StatefulWidget {
  @override
  _OnlineIslemlerSayfasiState createState() => _OnlineIslemlerSayfasiState();
}

class _OnlineIslemlerSayfasiState extends State<OnlineIslemlerSayfasi> {
  List<String> cepTel = ["540", "541", "542", "543", "544", "545"];

  String secilenTel = null;
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Online İşlemler-Giriş",
          style: TextStyle(fontSize: 20, color: Colors.green.shade800),
        ),
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Sorgula",
                style: TextStyle(fontSize: 18, color: Colors.green.shade800),
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.cyan.shade100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Konyaspor online işlemlerine hoş geldiniz. Kimlik numaranızı ve telefon numaranızı girdikten sonra sorgula butonuna basınız",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kimlik Numarası(*)",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    decoration: InputDecoration(
                      labelText: "TC",
                      hintText: "TC giriniz",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "bu alanı bos bırakamazsınız";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "İsim Soyisim giriniz...",
                      labelText: "İsim Soyisim",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: secilenTel,
                            hint: Text("Cep Tel"),
                            items: cepTel.map((tel) {
                              return DropdownMenuItem<String>(
                                child: Text(tel),
                                value: tel,
                              );
                            }).toList(),
                            onChanged: (tel) {
                              setState(() {
                                secilenTel = tel;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "*** ** **",
                              labelText: "Telefon",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "*Bilgilerini verdiğim firmanın yetkilisi/ortağı/vekili/muhasebecisi/mali müşaviri olduğumu,",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "*Yetkim olmaksızın sisteme giriş için sms kodu gönderilen cep telefonum vasıtasıyla yapmış oldugum bilgi güncellemesine ilgin yanlış beyanda bulumam halinde vb sonucları kabul ettiğimi,",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "*Dolduracagım bilgilerin dogrulugunu,",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Kabul ve beyan ediyorum",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      Switch(
                        value: switchState,
                        onChanged: (tiklandi) {
                          setState(() {
                            switchState = tiklandi;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
