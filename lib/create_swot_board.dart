import 'package:flutter/material.dart';

class CreateSwotBoard extends StatefulWidget {
  @override
  _CreateSwotBoardState createState() => _CreateSwotBoardState();
}

class _CreateSwotBoardState extends State<CreateSwotBoard> {
  final strengths = TextEditingController();
  final weaknesses = TextEditingController();
  final opportunities = TextEditingController();
  final threats = TextEditingController();
  final projectName = TextEditingController();
  //final data = DatePickerDialog(initialDate: Da, firstDate: firstDate, lastDate: lastDate)

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          centerTitle: true,
          actions: <Widget>[],
          title: Text("SWOT Board Creation"),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  width: 300,
                  height: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    controller: strengths,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your project\'s strengths here!',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  width: 300,
                  height: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    controller: weaknesses,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your project\'s weaknesses here!',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  width: 300,
                  height: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: opportunities,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your project\'s opportunities here!',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    onTap: () {
                      InputDecoration(
                        hintStyle: TextStyle(color: Colors.transparent),
                      );
                    },
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  width: 300,
                  height: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: threats,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your project\'s threats here!',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                  )),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.blue.shade800,
                child: Text('Save'),
              ),
            ],
          ),
        )));
  }
}
