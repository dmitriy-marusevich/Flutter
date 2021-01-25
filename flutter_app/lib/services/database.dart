import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/Teams.dart';

class DatabaseService{

  final CollectionReference _teamsCollection =
  FirebaseFirestore.instance.collection('teams');
  final CollectionReference _playersCollection =
  FirebaseFirestore.instance.collection('players');

  Future addOrUpdateTeam (Team team) async{
   // return await _teamsCollection.doc(team.uid).set(team.toMap); // TODO add M in Team convert to map
  }
}