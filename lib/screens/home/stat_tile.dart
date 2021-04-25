import 'package:flutter/material.dart';
import 'package:la_hacks/models/stat.dart';

class StatTile extends StatelessWidget {
  final Stat stat;
  StatTile({
    this.stat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.pink,
            ),
            title: Text(stat.name),
            subtitle: Text('gender: ${stat.gender}'),
          ),
        ));
  }
}
