// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/my_age.dart';
import 'my_name.dart';

class FirestoreData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataName = Provider.of<MyName>(context);
    var dataAge = Provider.of<MyAge>(context);

    if (dataName.name == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Center(
      child: Text(
        'Name: ${dataName.name}, Age: ${dataAge.age}',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
