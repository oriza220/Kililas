import 'package:flutter/material.dart';
import 'package:ililas_app/Widget/animated_card_widget.dart';

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
  List<String> gambarDepan = ['images/kel 1.png', 'images/kel 2.png','images/Kel 3.png','images/kel 4.png','images/kel 5.png','images/kel 6.png','images/kel 7.png','images/kel 8.png','images/kel 9.png','','images/kel 11.png','images/kel 12.png','images/kel 13.png','images/kel 14.png','images/kel 15.png','','images/kel 17.png','images/kel 18.png',];
  List<String> gambarBelakang = ['images/kel 1_1.png', 'images/kel 2_1.png','images/kel 3_1.png','images/kel 4_1.png','images/kel 5_1.png','images/kel 6_1.png','images/kel 7_1.png','images/kel 8_1.png','images/kel 9_11.png','','images/kel 11_1.png','images/kel 12_1.png','images/kel 13_1.png','images/kel 14_1.png','images/kel 15_1.png','','images/kel 17_.png','images/kel 18_1.png'];
  List<String> deskripsiGambar = ['kelompok 1', 'kelompok 2','kelompok 3','kelompok 4','kelompok 5','kelompok 6','kelompok 7','kelompok 8','kelompok 9','kelompok 10','kelompok 11','kelompok 11','kelompok 12','kelompok 13','kelompok 14','kelompok 15','kelompok 16','kelompok 17','kelompok 18'];
  List<String> namaKelompok = ['Chemistry Collaboration','Combined Chemistry','Chemisteam57','SADUGA',"Chemistry Fluere",'H2O CHEMISTRY','Chemist Hub Community','Chemistry Buddies','Fist Chemisteam',"","Chemistry Unity","Chemistry123","ZETOONE","Marvelous Chemistry","De'Chem","Kimia lintas dimensi","Eentweedrie team","Kililas"];
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
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
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
                Divider(
                  height: 10.0,
                ),
                Text(
                  namaKelompok[index],
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                Divider(
                  height: 2.0,
                ),
                Text(
                  deskripsiGambar[index],
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                Divider(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                  child: Row(
                    children: [
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = secondPage? 9 : 0;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : secondPage ? ("images/kel 10.gif") : ("images/kel 1.png"),
                              urlBack: secondPage ? ("images/kel 10.gif") : ("images/kel 1_1.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/kel 2.png"), urlBack: ("images/kel 2_1.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/Kel 3.png"), urlBack: ("images/kel 3_1.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/kel 4.png"), urlBack: ("images/kel 4_1.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                  child: Row(
                    children: [
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 4;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/kel 5.png"), urlBack: ("images/kel 5_1.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 5;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/kel 6.png"), urlBack: ("images/kel 6_1.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 6;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/kel 7.png"), urlBack: ("images/kel 7_1.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              index = 7;
                            });
                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: MovingCardWidget ( urlFront : ("images/kel 8.png"), urlBack: ("images/kel 8_1.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 5.0,
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        index = 8;
                      });
                    },
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      child: MovingCardWidget ( urlFront : ("images/kel 9.png"), urlBack: ("images/kel 9_11.png"),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
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
