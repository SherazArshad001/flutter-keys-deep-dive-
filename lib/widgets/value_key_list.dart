import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';

class ValueKeyList extends StatelessWidget {
  final List<Item> items;

  const ValueKeyList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('🔑 ValueKey Example'),
        Expanded(
          child: ListView(
            children: items
                .map(
                  (item) => ListTile(
                    key: ValueKey(item.id),
                    title: Text(item.name),
                    subtitle: const Text('Using ValueKey'),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
