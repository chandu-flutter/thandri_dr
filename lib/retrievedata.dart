import 'package:flutter/material.dart';

class RetrieveScreen extends StatelessWidget {
  const RetrieveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
        title: const Text('Members List'),
        centerTitle: true,
      ),
    );
  }
}
