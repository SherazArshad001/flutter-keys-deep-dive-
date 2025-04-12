import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';
import 'package:flutter_keys_deep_dive/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final List<Item> items = [
    Item(id: 1, name: 'Apple'),
    Item(id: 2, name: 'Banana'),
    Item(id: 3, name: 'Cherry'),
  ];

  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Keys Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(items: items, formKey: formKey),
    );
  }
}
