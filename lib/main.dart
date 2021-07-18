import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:friendly_swot_app/home_screen.dart';
import 'package:friendly_swot_app/second_home.dart';
import 'package:friendly_swot_app/show_swot_board.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "home",
      routes: {
        "home": (context) => Home(),
        "secondHome": (context) => SecondHome(),
        "listBoardsPage": (context) => ListBoards(),
      },
    );
  }
}
