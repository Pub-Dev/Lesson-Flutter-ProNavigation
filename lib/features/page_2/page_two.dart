import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({
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
