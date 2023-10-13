import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/firebase_options.dart';
import 'my_app.dart';
import 'my_name.dart';
import 'my_age.dart';
import 'name_firestore_service.dart';
import 'age_firestore_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        StreamProvider<MyName>(
          initialData: MyName(name: ''),
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
        // Добавьте другие провайдеры по необходимости
      ],
      child: MyApp(),
    ),
  );
}
