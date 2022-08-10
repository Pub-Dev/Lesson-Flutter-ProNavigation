import 'package:flutter/material.dart';
import 'package:lesson_flutter_pronavigation/core/routes/route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NamedRoute.homePageOne);
              },
              child: const Text('Home Page One'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NamedRoute.homePageTwo);
              },
              child: const Text('Home Page Two'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NamedRoute.homePageThree);
              },
              child: const Text('Home Page Three'),
            ),
          ],
        ),
      ),
    );
  }
}
