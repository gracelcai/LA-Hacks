import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:la_hacks/models/stat.dart';
import 'package:la_hacks/screens/home/stat_tile.dart';

class StatsList extends StatefulWidget {
  @override
  _StatsListState createState() => _StatsListState();
}

class _StatsListState extends State<StatsList> {
  @override
  Widget build(BuildContext context) {
    final stats = Provider.of<List<Stat>>(context);

    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return StatTile(stat: stats[index]);
      },
    );
  }
}
