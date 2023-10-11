import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_provider/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Инициализация Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Firestore Stream Example',
      home: StreamProvider<DocumentSnapshot?>(
        initialData: null,
        create: (context) {
          // Создаем и возвращаем поток данных из Cloud Firestore
          return FirebaseFirestore.instance.doc('coll/123').snapshots();
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
    var documentSnapshot = Provider.of<DocumentSnapshot?>(context);

    if (documentSnapshot == null || !documentSnapshot.exists) {
      return CircularProgressIndicator();
    }

    var data = documentSnapshot.data() as Map<String, dynamic>;
    var name = data['Name'];

    if (name == "") return Center(child: CircularProgressIndicator());

    return Center(
      child: Text(
        'Name: $name',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
