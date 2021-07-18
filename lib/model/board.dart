class Board {
  String strengths;
  String weaknesses;
  String opportunities;
  String threats;
  String project;
  String id;

  Board.obj({
    this.strengths,
    this.weaknesses,
    this.opportunities,
    this.threats,
    this.project,
    this.id,
  });

  factory Board.fromJson(Map<String, dynamic> json, String id) {
    return Board.obj(
      id: id,
      strengths: json['strengths'],
      weaknesses: json['weaknesses'],
      opportunities: json['opportunities'],
      threats: json['threats'],
      project: json['project'],
    );
  }
}
