import 'package:flutter/material.dart';
import 'pages/genres_page.dart';
import 'pages/info_page.dart';
import 'pages/intro_page.dart';
import 'pages/login_page.dart';
import 'utils.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gradient Screens',
      theme: new ThemeData(
          hintColor: Colors.grey[100], //

          fontFamily: 'GE SS Light',
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: loblollyColor),
            // border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow, style: BorderStyle.none)),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, style: BorderStyle.none)),
          ),
          accentColor: Colors.lime),
      builder: (context, child){
        return appDirectionality(child);
      },
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();


  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: new TabBarView(children: [
          IntroPage(),
          InfoPage(),
          GenresPage(),
          LoginPage(),
        ]),
      ),
    );
  }
}
