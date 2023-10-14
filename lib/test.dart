import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Lottie.asset("animations/sw_le.json"),
        ],
      ),
    );
  }
}
