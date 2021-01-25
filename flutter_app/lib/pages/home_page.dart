import 'package:flutter/material.dart';
import 'package:flutter_app/models/Teams.dart';
import 'package:flutter_app/pages/team_page.dart';
import 'package:flutter_app/services/authentication_service.dart';
import 'package:flutter_app/widgets/floating_action_button.dart';
import 'package:flutter_app/widgets/item_card.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final teamData = Provider.of<TeamsDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<User>().email),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.backspace_outlined,
              color: Colors.white,
            ),
            onPressed: ()  {
              context.read<AuthenticationService>().signOut();
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: teamData.itemss.length,
          itemBuilder: (context, int index) => ChangeNotifierProvider.value(
            value: teamData.itemss[index],
            child: GestureDetector(
                onLongPress: () {

                }, //TODO delete team
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => TeamPage()
                  )
                  );
                },
                child: ItemCard()
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonCheckAdmin(

      ),
    );
  }
}



