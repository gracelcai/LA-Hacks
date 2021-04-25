import 'package:flutter/material.dart';
import 'package:la_hacks/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> genders = [
    'male',
    'female',
    'non-binary',
    'prefer not to say'
  ];
  final List<String> exercises = [
    'sedentary',
    'low activity',
    'medium activity',
    'high activity'
  ];
  final List<String> feet = ['4', '5', '6', '7'];
  final List<String> inches = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11'
  ];

  String _currentName;
  String _currentGender;
  String _currentAge;
  String _currentFeet;
  String _currentInches;
  String _currentWeight;
  String _currentExercise;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        Text(
          'Update you health data.',
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 20.0),
        TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Name'),
            validator: (val) => val.isEmpty ? 'Enter your name' : null,
            onChanged: (val) {
              setState(() => _currentName = val);
            }),
        SizedBox(height: 20.0),
        DropdownButtonFormField(
          items: genders.map((gender){
            return DropdownMenuItem(
                value: gender,
                child: Text(gender)
            );
          }).toList(),

        ),
        RaisedButton(
            color: Colors.pink[400],
            child: Text('Update', style: TextStyle(color: Colors.white)),
            onPressed: () async {
              print('done');
            })
      ]),
    );
  }
}
