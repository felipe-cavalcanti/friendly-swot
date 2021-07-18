import 'package:flutter/material.dart';
import 'package:friendly_swot_app/services/board_service.dart';
import 'model/board.dart';

class CreateSwotBoard extends StatelessWidget {
  TextEditingController strengths;
  TextEditingController weaknesses;
  TextEditingController opportunities;
  TextEditingController threats;
  TextEditingController project;
  Board board;

  var service = BoardService();

  CreateSwotBoard(Board board) {
    this.board = board;
    if (this.board != null) {
      strengths = TextEditingController(text: this.board.strengths);
      weaknesses = TextEditingController(text: this.board.weaknesses);
      opportunities = TextEditingController(text: this.board.opportunities);
      threats = TextEditingController(text: this.board.threats);
      project = TextEditingController(text: this.board.project);
    } else {
      strengths = TextEditingController();
      weaknesses = TextEditingController();
      opportunities = TextEditingController();
      threats = TextEditingController();
      project = TextEditingController();
    }
  }

  @override
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
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(1.0),
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
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(1.0),
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
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(1.0),
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
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(1.0),
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
              Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    controller: project,
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your project\'s name here!',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                onPressed: () {
                  if (board == null) {
                    board = Board.obj(
                      strengths: strengths.text,
                      weaknesses: weaknesses.text,
                      opportunities: opportunities.text,
                      threats: threats.text,
                      project: project.text,
                    );
                  } else {
                    board.strengths = strengths.text;
                    board.weaknesses = weaknesses.text;
                    board.opportunities = opportunities.text;
                    board.threats = threats.text;
                    board.project = project.text;
                  }
                  service.AddBoard(context, board);
                },
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade800),
                child: Text('Save'),
              ),
            ],
          ),
        )));
  }
}
