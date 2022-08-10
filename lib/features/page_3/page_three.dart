import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
