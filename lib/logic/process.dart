import 'package:flutter/material.dart';

import 'buttons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String onceki = "";
  String goruntulenecekDeger = "";
  int islemStatus = 0;
  int birinciSayi = 0;
  String islem = "";
  String sonuc = "";
  String netice = "";
  int sonucDurumu = 0;
  int ikinciSayi = 0;
  int ucuncuSayi = 0;
  String degerBeforePlusMinus = "";
  String sonucBeforePlusMinus = "";
  String sonucAfterPlusMinus = "";

  void btnClick(String btnVal) {
    if (btnVal == "1" ||
        btnVal == "2" ||
        btnVal == "3" ||
        btnVal == "4" ||
        btnVal == "5" ||
        btnVal == "6" ||
        btnVal == "7" ||
        btnVal == "8" ||
        btnVal == "9" ||
        btnVal == "0" ||
        btnVal == ".") {
      setState(() {
        goruntulenecekDeger = goruntulenecekDeger + btnVal;
        if (goruntulenecekDeger.length >= 20) {
          goruntulenecekDeger = "❗️ Çok büyük bir sayı girdiniz.";
          //goruntulenecekDeger = goruntulenecekDeger + btnVal;
        }
      });
    }

    if (btnVal == "C") {
      birinciSayi = 0;
      ikinciSayi = 0;
      islemStatus = 0;
      sonucDurumu = 0;
      setState(() {
        onceki = "";
        goruntulenecekDeger = "";
        islem = "";
        netice = "";
      });
    }

    if (btnVal == "+") {
      birinciSayi = int.parse(goruntulenecekDeger);
      islem = btnVal;
      setState(() {
        onceki = birinciSayi.toString() + btnVal;
        goruntulenecekDeger = "";
      });
    } else if (btnVal == "−") {
      birinciSayi = int.parse(goruntulenecekDeger);
      islem = btnVal;
      setState(() {
        onceki = birinciSayi.toString() + btnVal;
        goruntulenecekDeger = "";
      });
    } else if (btnVal == "×") {
      birinciSayi = int.parse(goruntulenecekDeger);
      islem = btnVal;
      setState(() {
        onceki = birinciSayi.toString() + btnVal;
        goruntulenecekDeger = "";
      });
    } else if (btnVal == "÷") {
      birinciSayi = int.parse(goruntulenecekDeger);
      islem = btnVal;
      setState(() {
        onceki = birinciSayi.toString() + btnVal;
        goruntulenecekDeger = "";
      });
    }

    if (btnVal == "=") {
      if (islem == "+") {
        setState(() {
          onceki = onceki + goruntulenecekDeger.toString();
          netice = (birinciSayi + int.parse(goruntulenecekDeger)).toString();
          if (onceki.length >= 80) {
            onceki = "❗️Sonuç çok büyük !";
            goruntulenecekDeger = "❗️Sonuç çok büyük !";
          }
          goruntulenecekDeger = netice;
        });
      }
      if (islem == "−") {
        setState(() {
          onceki = onceki + goruntulenecekDeger.toString();
          netice = (birinciSayi - int.parse(goruntulenecekDeger)).toString();
          if (onceki.length >= 80) {
            onceki = "❗️Sonuç çok büyük !";
            goruntulenecekDeger = "❗️Sonuç çok büyük !";
          }
          goruntulenecekDeger = netice;
        });
      }
      if (islem == "×") {
        setState(() {
          onceki = onceki + goruntulenecekDeger.toString();
          netice = (birinciSayi * int.parse(goruntulenecekDeger)).toString();
          if (onceki.length >= 80) {
            onceki = "❗️Sonuç çok büyük !";
            goruntulenecekDeger = "❗️Sonuç çok büyük !";
          }
          goruntulenecekDeger = netice;
        });
      }
      if (islem == "÷") {
        setState(() {
          onceki = onceki + goruntulenecekDeger.toString();
          netice = (birinciSayi / int.parse(goruntulenecekDeger)).toString();
          if (onceki.length >= 80) {
            onceki = "❗️Sonuç çok büyük !";
            goruntulenecekDeger = "❗️Sonuç çok büyük !";
          }
          goruntulenecekDeger = netice;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: EdgeInsets.all(12.0),
              child: Text(
                onceki,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: EdgeInsets.all(12.0),
              child: Text(goruntulenecekDeger,
                  style: TextStyle(fontSize: 44, color: Colors.white)),
            ),
            SizedBox.fromSize(size: Size.square(8.0)),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "C",
                        sembolColor: 0xff8d6e63,
                        textSize: 35,
                        callBack: btnClick,
                        fixedSizeNum: 300,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "÷",
                        sembolColor: 0xff8d6e63,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                    ],
                  ),
                  SizedBox.fromSize(size: Size.square(8.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "7",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "8",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "9",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "×",
                        sembolColor: 0xff8d6e63,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                    ],
                  ),
                  SizedBox.fromSize(size: Size.square(8.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "4",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "5",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "6",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "−",
                        sembolColor: 0xff8d6e63,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                    ],
                  ),
                  SizedBox.fromSize(size: Size.square(8.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "1",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "2",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "3",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "+",
                        sembolColor: 0xff8d6e63,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                    ],
                  ),
                  SizedBox.fromSize(size: Size.square(8.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "0",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: ".",
                        sembolColor: 0xff434343,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 80,
                      ),
                      ButtonCal(
                        textColor: Colors.white,
                        sembol: "=",
                        sembolColor: 0xff8d6e63,
                        textSize: 40,
                        callBack: btnClick,
                        fixedSizeNum: 180,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
