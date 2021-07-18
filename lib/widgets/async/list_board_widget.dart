import 'package:flutter/material.dart';
import 'package:friendly_swot_app/model/board.dart';

class ListBoardWidget extends StatelessWidget {
  List<Board> boardListArray = [];

  @override
  Widget build(BuildContext context) {
    return new ListView.separated(
      itemCount: 0,
      separatorBuilder: (context, index) =>
          Padding(padding: EdgeInsets.only(top: 2, bottom: 2)),
      itemBuilder: (context, index) {
        var currentBoard = boardListArray[index];
        return GestureDetector(
          onTap: () {},
          child: Card(
            child: Text(currentBoard.project),
          ),
        );
      },
    );
  }
}
