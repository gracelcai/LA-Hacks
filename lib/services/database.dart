import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // collection reference
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference statsCollection = Firestore.instance.collection('stats');
  Future updateUserData (String name, String gender, String feet, String inches, String weight, String age, String exercise) async {
    return await statsCollection.document(uid).setData({
      'name': name,
      'gender': gender,
      'feet': feet,
      'inches': inches,
      'weight': weight,
      'age': age,
      'exercise': exercise,
    });
  }

}