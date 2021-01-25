import 'package:flutter/material.dart';
import 'package:flutter_app/pages/screen_page.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team #'),// TODO get team name
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.image,
              color: Colors.tealAccent,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ScreenPage()
              )
              );
            },
          ),
        ],
      ),
      body: Container(

      ),
    );

  }
}