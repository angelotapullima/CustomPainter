import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../PainterAlineacion/painter_alineacion.dart';
import '../models/coach.dart';
import '../models/match.dart';
import '../models/player.dart';

class LineUpPage extends StatefulWidget {
  const LineUpPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LineUpPage> createState() => _LineUpPageState();
}

class _LineUpPageState extends State<LineUpPage> {
  List<StartXI> localList = [];
  List<StartXI> visitList = [];
  @override
  Widget build(BuildContext context) {
    Future<MatchGame> getData() async {
      http.Response response = await http.post(
        Uri.parse(
            'https://capitan.bufeotec.com/api/Inicio/listar_alineaciones_partido'),
        body: {
          'app': 'true',
          'fixture': '1016060',
        },
      );
      if (response.statusCode == HttpStatus.ok) {
        Map<String, dynamic> userMap = jsonDecode(response.body);
        var user = MatchGame.fromJson(userMap);
        return user;
      }
      return MatchGame();
    }

    List<StartXI> iterarItemList2(
      String formation,
      List<StartXI> jugadorx,
      bool isLocal,
    ) {
      final List<StartXI> listGeneral = [];

      var formationLocalSplit = '1-$formation';
      var listaElementosLocal = formationLocalSplit.split('-');

      if (listaElementosLocal.isNotEmpty) {
        listaElementosLocal.asMap().forEach((index, element) {
          int valorFor = int.parse(listaElementosLocal[index]);

          jugadorx.asMap().forEach((key, value) {
            var splitList = jugadorx[key].player?.grid?.split(':');
            if (int.parse(splitList?[0] ?? '') == (index + 1)) {
              var valorx = 130 / double.parse('${valorFor + 1}');
              var posx = (int.parse(splitList?[1] ?? '') * valorx) - 15;

              var valory = (57 / listaElementosLocal.length);
              var posy = isLocal ? (100 - (valory * index)) : (valory * index);

              StartXI jugadoresAlineacionModel = StartXI();
              Player player = Player();

              player.id = jugadorx[key].player?.id;
              player.grid = jugadorx[key].player?.grid;
              player.name = jugadorx[key].player?.name;
              player.number = jugadorx[key].player?.number;
              player.pos = jugadorx[key].player?.pos;
              player.planx = posx;
              player.plany = posy;
              jugadoresAlineacionModel.player = player;
              listGeneral.add(jugadoresAlineacionModel);
            }
          });
        });

        for (var i = 0; i < listaElementosLocal.length; i++) {
          for (var y = 0; y < jugadorx.length; y++) {}
        }
      }
      return listGeneral;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alineación'),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot<MatchGame> painter) {
          if (painter.hasData) {
            if (painter.data?.result?.response?.isNotEmpty ?? true) {
              localList = iterarItemList2(
                  painter.data?.result?.response?[0].formation ?? '',
                  painter.data?.result?.response?[0].startXI ?? [],
                  true);
              visitList = iterarItemList2(
                  painter.data?.result?.response?[1].formation ?? '',
                  painter.data?.result?.response?[1].startXI ?? [],
                  false);
            }

            if (painter.data?.result?.response?.isNotEmpty ?? true) {
              return ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: CustomPaint(
                        size: const Size(
                          450,
                          300,
                        ),
                        painter: PainterAlineacion(
                          context: context,
                          data: painter.data,
                          localList: localList,
                          visitList: visitList,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AlineacionSuplentes(
                      local:
                          painter.data?.result?.response?[0].substitutes ?? [],
                      visita:
                          painter.data?.result?.response?[1].substitutes ?? [],
                      title: 'Titulares'),
                  const SizedBox(
                    height: 10,
                  ),
                  AlineacionTitulares(
                      local: localList, visita: visitList, title: 'Suplentes'),
                  const SizedBox(
                    height: 10,
                  ),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Entrenadores',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Divider()
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      painter.data?.result?.response?[0].coach
                                              ?.name ??
                                          '',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    child: Text(
                                      painter.data?.result?.response?[1].coach
                                              ?.name ??
                                          '',
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                              const Divider()
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            } else {
              return const SizedBox(
                child: Center(
                  child: Text('No hay datos'),
                ),
              );
            }
          } else {
            return const SizedBox(
              height: 50,
              child: Center(
                child: CupertinoActivityIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}

class AlineacionTitulares extends StatelessWidget {
  const AlineacionTitulares({
    super.key,
    required this.local,
    required this.visita,
    required this.title,
  });

  final List<StartXI> local;
  final List<StartXI> visita;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: local.length + 1,
          itemBuilder: (context, index2) {
            if (index2 == 0) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const Divider()
                  ],
                ),
              );
            }
            int index = index2 - 1;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${local[index].player?.number}    ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${local[index].player?.name}  ',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Text(
                          '${visita[index].player?.name}   ',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        ' ${visita[index].player?.number}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Divider()
                ],
              ),
            );
          }),
    );
  }
}

class AlineacionSuplentes extends StatelessWidget {
  const AlineacionSuplentes({
    super.key,
    required this.local,
    required this.visita,
    required this.title,
  });

  final List<Substitutes> local;
  final List<Substitutes> visita;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: local.length + 1,
          itemBuilder: (context, index2) {
            if (index2 == 0) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const Divider()
                  ],
                ),
              );
            }
            int index = index2 - 1;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${local[index].player?.number}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${local[index].player?.name}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Text(
                          '${visita[index].player?.name}',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        ' ${visita[index].player?.number}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Divider()
                ],
              ),
            );
          }),
    );
  }
}
