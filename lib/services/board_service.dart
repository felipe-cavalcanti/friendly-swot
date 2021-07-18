import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:friendly_swot_app/model/board.dart';
import 'package:friendly_swot_app/second_home.dart';

class BoardService {
  Future<Iterable<Board>> GetAllBoards() {
    CollectionReference boards =
        FirebaseFirestore.instance.collection('boards');

    return boards
        .get()
        .then((value) => value.docs.map((e) => Board.fromJson(e.data(), e.id)));
  }

  Future<void> AddBoard(BuildContext context, Board board) {
    CollectionReference boards =
        FirebaseFirestore.instance.collection('boards');

    if (board.id == null) {
      return boards.add({
        'strengths': board.strengths,
        'weaknesses': board.weaknesses,
        'opportunities': board.opportunities,
        'threats': board.threats,
        'project': board.project
      }).then((value) async {
        await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text("Message"),
                content: Text("SWOT Board successfully created!"),
                actions: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () => {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SecondHome()),
                          (Route<dynamic> route) => false)
                    },
                  )
                ],
              );
            });
      }).catchError((error) => print("Error"));
    } else {
      return boards.doc(board.id).update({
        'strengths': board.strengths,
        'weaknesses': board.weaknesses,
        'opportunities': board.opportunities,
        'threats': board.threats,
        'project': board.project
      }).then((value) async {
        await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text("Message"),
                content: Text("SWOT Board successfully updated!"),
                actions: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () => {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SecondHome()),
                          (Route<dynamic> route) => false)
                    },
                  )
                ],
              );
            });
      }).catchError((error) => print("Error"));
    }
  }
}
