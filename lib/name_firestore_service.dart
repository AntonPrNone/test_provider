import 'package:cloud_firestore/cloud_firestore.dart';
import 'my_name.dart';

class NameFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<MyName> streamDocument() {
    return _firestore.doc('coll/123').snapshots().map((snapshot) {
      final data = snapshot.data() as Map<String, dynamic>;
      return MyName(name: data['Name'] ?? '');
    });
  }
}
