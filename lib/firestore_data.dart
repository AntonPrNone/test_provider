// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_data.dart';

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
