import 'package:friendly_swot_app/model/board.dart';

class FakeService {
  static List<Board> boardList = [];
  Board({
    strengths = " Muitos seniors",
    weaknesses = " Projeto legado ",
    opportunities = " Introdução de nova stack de tecnologia ",
    threats = " Projeto muito longo ",
    project = " PJT01 ",
  });
}
