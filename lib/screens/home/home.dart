import 'package:flutter/material.dart';
import 'package:la_hacks/models/stat.dart';
import 'package:la_hacks/screens/home/settings_form.dart';
import 'package:la_hacks/services/auth.dart';
import 'package:la_hacks/services/database.dart';
import 'package:provider/provider.dart';
import 'package:la_hacks/screens/home/stats_list.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: SettingsForm()
        );
      });
    }
    return StreamProvider<List<Stat>>.value(
        value: DatabaseService().stats,
        child: Scaffold(
          backgroundColor: Colors.red[100],
          appBar: AppBar(
            title: Text('Healthical'),
            backgroundColor: Colors.red[400],
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                  onPressed: () async {
                    _auth.signOut();
                  },
                  icon: Icon(Icons.person),
                  label: Text('Logout')),
              FlatButton.icon(onPressed: () => _showSettingsPanel(), icon: Icon(Icons.settings), label: Text('settings'))
            ],
          ),
           body: StatsList()
        ));
  }
}
