import 'package:flutter/material.dart';

class StepperKullanimi extends StatefulWidget {
  @override
  _StepperKullanimiState createState() => _StepperKullanimiState();
}

class _StepperKullanimiState extends State<StepperKullanimi> {
  List<Step> tumStepler;
  String isimSoyisim, email, sifre;
  int _aktifStep = 0;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  bool hata = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _stepAta();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          /* onStepTapped: (tiklandi) {
            setState(() {                //  burası Tıklanınca direk ostepe gider
              _aktifStep = tiklandi;
            });
          },*/
          onStepContinue: () {
            setState(() {
              _ileriButonKontrol();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
          physics: ClampingScrollPhysics(),
        ),
      ),
    );
  }

  List<Step> _stepAta() {
    List<Step> stepler = [
      Step(
        title: Text("İsim Soyisim"),
        state: Ayarspepler(0),
        isActive: true,
        subtitle: Text("İsim Soyisim Giriniz"),
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: key0,
            decoration: InputDecoration(
              labelText: "İsim Soyisim",
              hintText: "İsim Soyisim giriniz...",
              border: OutlineInputBorder(),
            ),
            validator: (girilenIsim) {
              if (girilenIsim.length < 6) {
                return "En az 6 karekter giriniz";
              }
            },
            onSaved: (girilenDeger) {
              isimSoyisim = girilenDeger;
            },
          ),
        ),
      ),
      Step(
        title: Text("E-mail"),
        state: Ayarspepler(1),
        isActive: true,
        subtitle: Text("email giriniz"),
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: key1,
            decoration: InputDecoration(
              labelText: "e-mail",
              hintText: "E-mail giriniz..",
              border: OutlineInputBorder(),
            ),
            validator: (girilenEmail) {
              if (!girilenEmail.contains("@")) {
                return "Emailinizi düzgün giriniz";
              }
            },
            onSaved: (girilenEmail) {
              email = girilenEmail;
            },
          ),
        ),
      ),
      Step(
        title: Text("Sifre"),
        state: Ayarspepler(2),
        subtitle: Text("Sifre Giriniz"),
        isActive: true,
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            obscureText: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: key2,
            decoration: InputDecoration(
              labelText: "Sifre",
              hintText: "Sifre giriniz...",
              border: OutlineInputBorder(),
            ),
            validator: (girilenSifre) {
              if (girilenSifre.length < 7) {
                return "En az 7 basamaklı şifre giriniz";
              }
            },
            onSaved: (gelenSifre) {
              sifre = gelenSifre;
            },
          ),
        ),
      ),
    ];
    return stepler;
  }

  Ayarspepler(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonKontrol() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState.validate()) {
          key0.currentState.save();
          hata = false;
          _aktifStep++;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState.validate()) {
          key1.currentState.save();
          hata = false;
          _aktifStep++;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState.validate()) {
          key2.currentState.save();
          hata = false;
          _aktifStep = 2;
          BilgileriGoster();
        } else {
          hata = true;
        }
        break;
    }
  }

  void BilgileriGoster() {
    debugPrint("isim Soyisim:$isimSoyisim Email:$email Sifre:$sifre");
  }
}
