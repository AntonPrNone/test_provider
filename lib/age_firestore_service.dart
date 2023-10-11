import 'package:cloud_firestore/cloud_firestore.dart';
import 'my_age.dart';

class AgeFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<MyAge> streamAgeDocument() {
    return _firestore.doc('coll/321').snapshots().map((snapshot) {
      final data = snapshot.data() as Map<String, dynamic>;
      return MyAge(age: data['Age'] ?? '');
    });
  }
}
