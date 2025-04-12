import 'package:flutter/material.dart';
import 'package:flutter_keys_deep_dive/models/item_model.dart';
import 'package:flutter_keys_deep_dive/widgets/widgets.dart'; // Barrel file

class HomeScreen extends StatefulWidget {
  final List<Item> items;
  final GlobalKey<FormState> formKey;

  const HomeScreen({
    super.key,
    required this.items,
    required this.formKey,
  });

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
        const SnackBar(content: Text('✅ Form submitted successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔑 Flutter Keys Deep Dive')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormSection(
              formKey: widget.formKey,
              onSubmit: _submitForm,
            ),
            const SectionTitle(title: '🔁 ValueKey Example'),
            ValueKeyList(items: itemList),
            const SizedBox(height: 8),
            ActionButton(
              onPressed: _shuffleItems,
              label: '',
            ),
            const SectionTitle(title: '🎯 ObjectKey Example'),
            ObjectKeyList(items: itemList),
            const SectionTitle(title: '❗ UniqueKey Example'),
            const UniqueBox(),
            const SectionTitle(title: '🧱 Custom Key Example'),
            const CustomBox(),
          ],
        ),
      ),
    );
  }
}
