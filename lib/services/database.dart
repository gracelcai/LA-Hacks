import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:la_hacks/models/stats.dart';

class DatabaseService {
  // collection reference
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference statsCollection =
      Firestore.instance.collection('stats');
  Future updateUserData(String name, String gender, String feet, String inches,
      String weight, String age, String exercise) async {
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

  // stats list from snapshot
  List<Stats> _statsListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Stats(
          name: doc.data['name'] ?? '',
          gender: doc.data['gender'] ?? '',
          feet: doc.data['feet'] ?? '',
          inches: doc.data['inches'] ?? '',
          weight: doc.data['weight'] ?? '',
          age: doc.data['age'] ?? '',
          exercise: doc.data['exercise'] ?? ''
      );
    }).toList();
  }

  Stream<List<Stats>> get stats {
    return statsCollection.snapshots().map(_statsListFromSnapshot);

  }
}
