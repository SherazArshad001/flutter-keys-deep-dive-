import 'package:flutter/material.dart';

class UniqueBox extends StatelessWidget {
  const UniqueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: UniqueKey(),
      height: 50,
      width: double.infinity,
      color: Colors.blueAccent,
      child: const Center(child: Text("UniqueKey Widget")),
    );
  }
}
