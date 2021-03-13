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
  int index = 0;
  bool gambar2 = false;
  bool gambar3 = false;

  List<String> gambarDepan = ['images/Logo_18.jpeg', 'images/Logo1.png'];
  List<String> gambarBelakang = ['images/Logo_18.jpeg', 'images/Logo1_2.png'];
  List<String> deskripsiGambar = ['kelompok 4', 'kelompok 5'];

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
            padding: const EdgeInsets.fromLTRB(0.0, 160.0, 0.0, 0.0),
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
                  "SADUGA",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                Divider(
                  height: 2.0,
                ),
                Text(
                  "KELOMPOK "
                  "4",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                Divider(
                  height: 50.0,
                ),
                Row(
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          child: Image.asset("images/atas.png"),
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
                          child: Image.asset("images/atas.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
