class Player {
  int? id;
  String? name;
  int? number;
  String? pos;
  String? grid;
  double? planx;
  double? plany;

  Player({this.id, this.name, this.number, this.pos, this.grid});

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    number = json['number'];
    pos = json['pos'];
    grid = json['grid'];
  }
}
