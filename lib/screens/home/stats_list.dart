import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:la_hacks/models/stat.dart';

class StatsList extends StatefulWidget {
  @override
  _StatsListState createState() => _StatsListState();
}

class _StatsListState extends State<StatsList> {
  @override
  Widget build(BuildContext context) {
    final stats = Provider.of<List<Stat>>(context);
    //print(stats.documents);
    stats.forEach((stat) {
      print(stat.name);
      print(stat.gender);
      print(stat.age);
      print(stat.feet);
      print(stat.inches);
      print(stat.weight);
      print(stat.exercise);
    });
    return Container();
  }
}
