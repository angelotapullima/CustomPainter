import 'package:custom_paint_example/models/player.dart';

class Coach {
  int? id;
  String? name;
  String? photo;

  Coach({this.id, this.name, this.photo});

  Coach.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
  }
}

class StartXI {
  Player? player;

  StartXI({this.player});

  StartXI.fromJson(Map<String, dynamic> json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
  }
}

class Substitutes {
  Player? player;

  Substitutes({this.player});

  Substitutes.fromJson(Map<String, dynamic> json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
  }
}
