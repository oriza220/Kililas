import 'package:flutter/material.dart';
import 'package:Kililas_app/Widget/animated_card_widget.dart';

void main() => runApp(MaterialApp(
      home: home(),
    ));

class home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homea(),
    );
  }
}

class Homea extends StatefulWidget {
  @override
  _Homea createState() => _Homea();
}

class _Homea extends State<Homea> {
  bool secondPage = false;
  int index = 0;
  List<String> gambarDepan = [
    'images/kel 1.png',
    'images/kel 2.png',
    'images/Kel 3.png',
    'images/kel 4.png',
    'images/kel 5.png',
    'images/kel 6.png',
    'images/kel 7.png',
    'images/kel 8.png',
    'images/kel 9.png',
    'images/kel 10.png',
    'images/kel 11.png',
    'images/Kel 12.png',
    'images/kel 13.png',
    'images/kel 14.png',
    'images/kel 15.png',
    'images/kel 16.png',
    'images/kel 17.png',
    'images/kel 18.png',
    "",
  ];
  List<String> gambarBelakang = [
    'images/kel 1_1.png',
    'images/kel 2_1.png',
    'images/kel 3_1.png',
    'images/kel 4_1.png',
    'images/kel 5_1.png',
    'images/kel 6_1.png',
    'images/kel 7_1.png',
    'images/kel 8_1.png',
    'images/kel 9_11.png',
    'images/kel 10_1.png',
    'images/kel 11_1.png',
    'images/kel 12_1.png',
    'images/kel 13_11.png',
    'images/kel 14_1.png',
    'images/kel 15_1.png',
    'images/kel 16_1.png',
    'images/kel 17_1.png',
    'images/kel 18_1.png',
    ""
  ];
  List<String> deskripsiGambar = [
    'kelompok 1',
    'kelompok 2',
    'kelompok 3',
    'kelompok 4',
    'kelompok 5',
    'kelompok 6',
    'kelompok 7',
    'kelompok 8',
    'kelompok 9',
    'kelompok 10',
    'kelompok 11',
    'kelompok 12',
    'kelompok 13',
    'kelompok 14',
    'kelompok 15',
    'kelompok 16',
    'kelompok 17',
    'kelompok 18',
    'kelompok 19'
  ];
  List<String> namaKelompok = [
    'Chemistry Collaboration',
    'Combined Chemistry',
    'Chemisteam57',
    'SADUGA',
    "Chemistry Fluere",
    'H2O CHEMISTRY',
    'Chemist Hub Community',
    'Chemistry Buddies',
    'Fist Chemisteam',
    "Bloom Chemistry",
    "Chemistry Unity",
    "Chemistry123",
    "ZETOONE",
    "Marvelous Chemistry",
    "De'Chem",
    "Kimia lintas dimensi",
    "Eentweedrie team",
    "Kililas"
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Kimia Lintas Kelas"),
          ),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 25.0),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      child: MovingCardWidget(
                        urlFront: gambarDepan[index],
                        urlBack: gambarBelakang[index],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      namaKelompok[index],
                      style: TextStyle(fontFamily: ("Times New Roman") ,fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3.0,3.0,3.0,24.0),
                    child: Text(
                      deskripsiGambar[index],
                      style: TextStyle(fontFamily: ("Times New Roman") ,fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage ? 9 : 0;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage
                                    ? ("images/kel 10.png")
                                    : ("images/kel 1.png"),
                                urlBack: secondPage
                                    ? ("images/kel 10_1.png")
                                    : ("images/kel 1_1.png"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage? 10 : 1;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage ? ("images/kel 11.png") : ("images/kel 2.png"),
                                urlBack: secondPage ? ("images/kel 11_1.png") : ("images/kel 2_1.png"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage ? 11 : 2;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage ? ("images/Kel 12.png") : ("images/Kel 3.png"),
                                urlBack: secondPage ? ("images/kel 12_1.png") : ("images/kel 3_1.png"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage? 12 : 3;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront:secondPage ? ("images/kel 13.png") : ("images/kel 4.png"),
                                urlBack: secondPage ? ("images/kel 13_11.png") : ("images/kel 4_1.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage? 13 : 4;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage ? ("images/kel 14.png") : ("images/kel 5.png"),
                                urlBack: secondPage ? ("images/kel 14_1.png") : ("images/kel 5_1.png"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage ? 14 : 5;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage ? ("images/kel 15.png") : ("images/kel 6.png"),
                                urlBack: secondPage ? ("images/kel 15_1.png") : ("images/kel 6_1.png"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage ? 15 : 6;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage ? ("images/kel 16.png") : ("images/kel 7.png"),
                                urlBack: secondPage ? ("images/kel 16_1.png") : ("images/kel 7_1.png"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                index = secondPage ? 16 : 7;
                              });
                            },
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              child: MovingCardWidget(
                                urlFront: secondPage ? ("images/kel 17.png") : ("images/kel 8.png"),
                                urlBack: secondPage ? ("images/kel 17_1.png") : ("images/kel 8_1.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            index = secondPage ? 17 : 8;
                          });
                        },
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          child: MovingCardWidget(
                            urlFront: secondPage ? ("images/kel 18.png") : ("images/kel 9.png"),
                            urlBack: secondPage ? ("images/kel 18_1.png") : ("images/kel 9_11.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                secondPage = false;
                              });
                            },
                            child: Image.asset("images/panah_kiri.png"),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                secondPage = true ;
                              });
                            },
                            child: Image.asset("images/panah_kanan.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 0.0,
                  ),
                ],
              )),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/Background_Kimia_APL_2.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
