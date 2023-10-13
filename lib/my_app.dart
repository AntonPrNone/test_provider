// ignore_for_file: prefer_const_constructors

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firestore Stream Example'),
          backgroundColor: Color.fromARGB(255, 105, 0, 198),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyName>(
                builder: (context, myName, child) {
                  return Column(
                    children: [
                      Text('Name: ${myName.name}'),
                      TextField(
                        controller: TextEditingController(text: myName.name),
                        onChanged: (newName) {
                          // Обработка изменения имени
                        },
                      ),
                    ],
                  );
                },
              ),
              Consumer<MyAge>(
                builder: (context, myAge, child) {
                  return Column(
                    children: [
                      Text('Age: ${myAge.age.toString()}'),
                      TextField(
                        controller:
                            TextEditingController(text: myAge.age.toString()),
                        onChanged: (newAge) {
                          // Обработка изменения возраста
                        },
                      ),
                    ],
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Обработка нажатия кнопки "Сохранить"
                },
                child: Text('Сохранить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
