import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class PlayersTeam with ChangeNotifier{
  final String id;
  final String name;
  final String position;


  PlayersTeam({
    @required  this.id,
    @required  this.name,
    @required  this.position,
  });
}

class PlayersTeamsDataProvider with ChangeNotifier{
  List<PlayersTeam> _items = [
    PlayersTeam(id: '01',
        name: 'Ronaldo',
        position: 'forward',
    ),
    PlayersTeam(id: '02',
        name: 'Puiol',
        position: 'Def',
    ),
    PlayersTeam(id: '03',
        name: 'Buffon',
        position: 'kiper',
    ),
  ];

  UnmodifiableListView<PlayersTeam> get items => UnmodifiableListView(_items);

  getElementById(String id) =>
      _items.singleWhere((element) => element.id == id);
}