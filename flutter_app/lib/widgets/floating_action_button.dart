import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/Teams.dart';
import 'package:flutter_app/pages/screen_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/add_team_page.dart';



class FloatingActionButtonCheckAdmin extends StatefulWidget {
  @override
  _FloatingActionButtonCheckAdminState createState() => _FloatingActionButtonCheckAdminState();
}

class _FloatingActionButtonCheckAdminState extends State<FloatingActionButtonCheckAdmin> {


  @override
  Widget build(BuildContext context) {

    final teamData = Provider.of<TeamsDataProvider>(context);

    final firebaseUser = context.watch<User>().email;
    if (firebaseUser == 'ad@ad.ad') {
      return FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => AddTeamPage()
          )
          );

        }, // TODO setState() => add Team ????!!
      );
    }
    return FloatingActionButton(
        child: Icon(Icons.add_photo_alternate_outlined),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => ScreenPage()
          )
          );
        }
    );
  }
}