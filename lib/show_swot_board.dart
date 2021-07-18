import 'package:flutter/material.dart';

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
      body: buildListView(),
    );
  }

  buildListView() {
    final itens = List<String>.generate(1000, (i) => "Item$i");
    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(' ${itens[index]}'),
        );
      },
    );
  }
}
