import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';

class ObjectKeyList extends StatelessWidget {
  final List<Item> items;

  const ObjectKeyList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
          key: ObjectKey(items[index]),
          title: Text(items[index].name),
        ),
      ),
    );
  }
}
