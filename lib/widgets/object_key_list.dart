import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';

class ObjectKeyList extends StatelessWidget {
  final List<Item> items;

  const ObjectKeyList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('🎯 ObjectKey Example'),
        Expanded(
          child: ListView(
            children: items
                .map(
                  (item) => Card(
                    key: ObjectKey(item),
                    child: ListTile(
                      title: Text(item.name),
                      subtitle: const Text('Using ObjectKey'),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
