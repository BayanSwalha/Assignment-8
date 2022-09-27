import 'package:flutter/material.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text(
          "Welcome to Our App!!",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
