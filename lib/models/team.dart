import 'match.dart';

class Team {
  int? id;
  String? name;
  String? logo;
  ColorsP? colors;

  Team({this.id, this.name, this.logo, this.colors});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    colors = json['colors'] != null ? ColorsP.fromJson(json['colors']) : null;
  }
}

class ColorsP {
  Tshirts? player;
  Tshirts? goalkeeper;

  ColorsP({this.player, this.goalkeeper});

  ColorsP.fromJson(Map<String, dynamic> json) {
    player = json['player'] != null ? Tshirts.fromJson(json['player']) : null;
    goalkeeper = json['goalkeeper'] != null
        ? Tshirts.fromJson(json['goalkeeper'])
        : null;
  }
}
