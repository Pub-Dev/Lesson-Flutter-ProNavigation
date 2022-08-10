import 'package:flutter/material.dart';

import '../../core/routes/route.dart';

class HomePageOne extends StatelessWidget {
  const HomePageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(NamedRoute.pageOne);
          },
          child: const Text('Ir para Page One'),
        ),
      ),
    );
  }
}
