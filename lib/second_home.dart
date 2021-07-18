import 'package:flutter/material.dart';
import 'package:friendly_swot_app/create_swot_board.dart';

class SecondHome extends StatefulWidget {
  @override
  _SecondHomeState createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        actions: <Widget>[],
        title: Text("Friendly SWOT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade800),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateSwotBoard(null)));
              },
              child: Text(
                "New SWOT board".toUpperCase(),
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade800),
              onPressed: () {
                Navigator.of(context).pushNamed("listBoardsPage");
              },
              child: Text(
                "My Saved Boards".toUpperCase(),
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
