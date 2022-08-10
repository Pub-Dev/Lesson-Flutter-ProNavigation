import 'package:flutter/material.dart';
import 'package:lesson_flutter_pronavigation/features/page_3/controllers/home_page_three_controller.dart';

class HomePageThree extends StatefulWidget {
  const HomePageThree({Key? key}) : super(key: key);

  @override
  State<HomePageThree> createState() => _HomePageThreeState();
}

class _HomePageThreeState extends State<HomePageThree> {
  HomePageThreeController controller = HomePageThreeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: controller.goToPageThree,
          child: const Text('Ir para Page Three'),
        ),
      ),
    );
  }
}
