import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';

class ValueKeyList extends StatelessWidget {
  final List<Item> items;

  const ValueKeyList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height
      child: ListView.builder(
        shrinkWrap:
            true, // Makes the list view occupy only as much space as needed
        physics:
            const NeverScrollableScrollPhysics(), // Prevents scroll conflicts
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
          key: ValueKey(items[index].id),
          title: Text(items[index].name),
        ),
      ),
    );
  }
}
