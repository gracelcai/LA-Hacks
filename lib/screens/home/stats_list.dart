import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class StatsList extends StatefulWidget {
  @override
  _StatsListState createState() => _StatsListState();
}

class _StatsListState extends State<StatsList> {
  @override
  Widget build(BuildContext context) {
    final stats = Provider.of<QuerySnapshot>(context);
    //print(stats.documents);
    for (var doc in stats.documents) {
      print(doc.data);
    }
    return Container();
  }
}
