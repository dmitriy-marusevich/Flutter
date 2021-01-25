import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/Teams.dart';



class AddTeamPage extends StatefulWidget {
  @override
  _AddTeamPageState createState() => _AddTeamPageState();
}

class _AddTeamPageState extends State<AddTeamPage> {

  @override
  Widget build(BuildContext context) {

    final teamData = Provider.of<TeamsDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Create team'),
      ),
      body: Container(
        child: Row(
          children: [
            RaisedButton(
              onPressed: () {  // ToDo satState to home page
                setState(() {
                  teamData.itemss.add(Team(uid: '04',
                      name: 'team 4',
                      points: 4213,
                      icon: Icons.android)
                  );
                });
              },
            )
          ],
        ),

      )
    );

  }
}