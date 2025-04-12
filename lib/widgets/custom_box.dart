import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('custom_container'),
      height: 50,
      width: double.infinity,
      color: Colors.greenAccent,
      child: const Center(child: Text("Base Key Example")),
    );
  }
}
