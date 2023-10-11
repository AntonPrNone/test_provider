// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firestore_data.dart';
import 'my_data.dart';
import 'name_firestore_service.dart';

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
          final firestoreService = NameFirestoreService();
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
