// my_app.dart
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'age_firestore_service.dart';
import 'firestore_data.dart';
import 'my_age.dart';
import 'my_name.dart';
import 'name_firestore_service.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Firestore Stream Example',
      home: MultiProvider(
        providers: [
          StreamProvider<MyName>(
            initialData: MyName(name: ''), // Инициализируйте оба поля
            create: (context) {
              final firestoreService = NameFirestoreService();
              return firestoreService.streamDocument();
            },
          ),
          StreamProvider<MyAge>(
            initialData: MyAge(age: 0),
            create: (context) {
              final firestoreService = AgeFirestoreService();
              return firestoreService.streamAgeDocument();
            },
          ),
        ],
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
