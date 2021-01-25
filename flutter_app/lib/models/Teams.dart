import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Team with ChangeNotifier{
  final String uid;
  final String name;
  final int points;
  final IconData icon;


  Team({
    @required  this.uid,
    @required  this.name,
    @required  this.points,
    @required this.icon
  });
}

class TeamsDataProvider with ChangeNotifier{
  List<Team> itemss = [
    Team(uid: '01',
        name: 'team 1',
        points: 33,
      icon: Icons.accessibility_new_rounded
    ),
    Team(uid: '02',
        name: 'team 2',
        points: 13,
      icon: Icons.android_rounded
    ),
    Team(uid: '03',
        name: 'team 3',
        points: 23,
      icon: Icons.accessible_forward_rounded
    ),
  ];


  // UnmodifiableListView<Team> get items => UnmodifiableListView(itemss);

  getElementById(String id) =>
      itemss.singleWhere((element) => element.uid == id);
}