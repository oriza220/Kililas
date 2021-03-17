import 'package:Kililas_app/Widget/animated_card_widget.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  final String title = 'Transform Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: MovingCardWidget(
          urlFront: 'images/Logo1.png',
          urlBack: 'images/Logo1_2.png',
        ),
      ),
    ),
  );
}