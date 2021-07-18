import 'package:flutter/material.dart';
import 'package:friendly_swot_app/widgets/async/list_board_widget.dart';

class ListBoards extends StatefulWidget {
  @override
  _ListBoardsState createState() => _ListBoardsState();
}

class _ListBoardsState extends State<ListBoards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        actions: <Widget>[],
        title: Text("My saved boards"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(child: ListBoardWidget()),
      ]),
    );
  }
}
