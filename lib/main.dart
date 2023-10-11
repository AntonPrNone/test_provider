// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_provider/firebase_options.dart';

class MyData {
  final String name;

  MyData({required this.name});
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Firestore Stream Example',
      home: StreamProvider<MyData>(
        initialData: MyData(name: ''),
        create: (context) {
          final firestoreService = Name_FirestoreService();
          return firestoreService.streamDocument();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Firestore Stream Example'),
            backgroundColor: Color.fromARGB(255, 105, 0, 198),
          ),
          body: FirestoreData(),
        ),
      ),
    );
  }
}

class FirestoreData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<MyData>(context);

    if (data.name.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }

    return Center(
      child: Text(
        'Name: ${data.name}',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class Name_FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<MyData> streamDocument() {
    return _firestore.doc('coll/123').snapshots().map((snapshot) {
      final data = snapshot.data() as Map<String, dynamic>;
      return MyData(name: data['Name'] ?? '');
    });
  }
}
