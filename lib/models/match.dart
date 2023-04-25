import 'package:custom_paint_example/models/team.dart';

import 'coach.dart';

class MatchGame {
  Result? result;

  MatchGame({this.result});

  MatchGame.fromJson(Map<String, dynamic> json) {
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
}

class Result {
  List<Response>? response;

  Result({this.response});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['response'] != null) {
      response = <Response>[];
      json['response'].forEach((v) {
        response?.add(Response.fromJson(v));
      });
    }
  }
}

class Response {
  Team? team;
  Coach? coach;
  String? formation;
  List<StartXI>? startXI;
  List<Substitutes>? substitutes;

  Response(
      {this.team, this.coach, this.formation, this.startXI, this.substitutes});

  Response.fromJson(Map<String, dynamic> json) {
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    coach = json['coach'] != null ? Coach.fromJson(json['coach']) : null;
    formation = json['formation'];
    if (json['startXI'] != null) {
      startXI = <StartXI>[];
      json['startXI'].forEach((v) {
        startXI?.add(StartXI.fromJson(v));
      });
    }
    if (json['substitutes'] != null) {
      substitutes = <Substitutes>[];
      json['substitutes'].forEach((v) {
        substitutes?.add(Substitutes.fromJson(v));
      });
    }
  }
}

class Tshirts {
  Tshirts({
    this.primary,
    this.number,
    this.border,
  });

  Tshirts.fromJson(Map<String, dynamic> json) {
    primary = json['primary'];
    number = json['number'];
    border = json['border'];
  }

  String? primary;
  String? number;
  String? border;
}
