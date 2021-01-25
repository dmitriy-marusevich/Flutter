import 'package:flutter/material.dart';
import 'package:flutter_app/models/Teams.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key key}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    final team = Provider.of<Team>(context, listen: false);

    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(Colors.amberAccent.shade200.value)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(team.icon),
            Text('${team.name}'),
            Text('${team.points}')
          ],
        ),
    );
  }
}
