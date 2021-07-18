import 'package:flutter/material.dart';
import 'package:friendly_swot_app/model/board.dart';
import 'package:friendly_swot_app/services/board_service.dart';
import '../../create_swot_board.dart';

class ListBoardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var service = BoardService();

    return FutureBuilder(
        future: service.GetAllBoards(),
        builder:
            (BuildContext context, AsyncSnapshot<Iterable<Board>> snapshot) {
          if (snapshot.hasError) {}
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return new ListView.separated(
            itemCount: snapshot.requireData.length,
            separatorBuilder: (context, index) =>
                Padding(padding: EdgeInsets.only(top: 2, bottom: 2)),
            itemBuilder: (context, index) {
              var currentBoard = snapshot.requireData.elementAt(index);
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateSwotBoard(currentBoard)));
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Text(currentBoard.project),
                    alignment: Alignment.center,
                  ),
                  margin: EdgeInsets.all(5),
                ),
              );
            },
          );
        });
  }
}
