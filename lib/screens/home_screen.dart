import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';

class HomeScreen extends StatefulWidget {
  final List<Item> items;
  final GlobalKey<FormState> formKey;

  const HomeScreen({super.key, required this.items, required this.formKey});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Item> itemList;

  @override
  void initState() {
    super.initState();
    itemList = List.from(widget.items);
  }

  void _shuffleItems() {
    setState(() => itemList.shuffle());
  }

  void _submitForm() {
    if (widget.formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form submitted')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Keys (Senior-Level)')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // FormSection(formKey: widget.formKey, onSubmit: _submitForm),
            // const SectionTitle(title: '🔁 ValueKey Example'),
            // ValueKeyList(items: itemList),
            // ActionButton(text: 'Shuffle List', onPressed: _shuffleItems),

            // const SectionTitle(title: '🎯 ObjectKey Example'),
            // ObjectKeyList(items: itemList),

            // const SectionTitle(title: '❗ UniqueKey Example'),
            // const UniqueBox(),

            // const SectionTitle(title: '🧱 Base Key Example'),
            // const CustomBox(),
          ],
        ),
      ),
    );
  }
}
