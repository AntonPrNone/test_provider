import 'package:cloud_firestore/cloud_firestore.dart';
import 'my_data.dart';

class NameFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<MyData> streamDocument() {
    return _firestore.doc('coll/123').snapshots().map((snapshot) {
      final data = snapshot.data() as Map<String, dynamic>;
      return MyData(name: data['Name'] ?? '');
    });
  }
}
