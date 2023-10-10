// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'classes/CounterModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(), // Создаем экземпляр модели
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Пример с использованием Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Счетчик:',
                style: TextStyle(fontSize: 20),
              ),
              Consumer<CounterModel>(
                builder: (context, counter, child) {
                  return Text(
                    '${counter.count}',
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Увеличиваем счетчик при нажатии на кнопку
                  Provider.of<CounterModel>(context, listen: false).increment();
                },
                child: Text('Увеличить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
