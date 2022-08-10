import 'package:flutter/material.dart';
import 'package:lesson_flutter_pronavigation/core/routes/route.dart';

class HomePageTwo extends StatelessWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              NamedRoute.pageTwo,
              arguments: 'Se inscreva no canal!!',
            );
          },
          child: const Text('Ir para Page Two'),
        ),
      ),
    );
  }
}
