import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_provider/firebase_options.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
