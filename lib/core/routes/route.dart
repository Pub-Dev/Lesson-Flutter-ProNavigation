import 'package:flutter/widgets.dart';

import '../../features/home/home_page.dart';
import '../../features/page_1/home_page_one.dart';
import '../../features/page_1/page_one.dart';
import '../../features/page_2/home_page_two.dart';
import '../../features/page_2/page_two.dart';
import '../../features/page_3/home_page_three.dart';
import '../../features/page_3/page_three.dart';

class NamedRoute {
  static const home = '/';
  static const homePageOne = '${home}homeone';
  static const pageOne = '$homePageOne/one';
  static const homePageTwo = '${home}hometwo';
  static const pageTwo = '$homePageTwo/two';
  static const homePageThree = '${home}homethree';
  static const pageThree = '$homePageThree/three';
}

class RouteHandler {
  static final routes = {
    NamedRoute.home: (_) => const HomePage(),
    NamedRoute.homePageOne: (_) => const HomePageOne(),
    NamedRoute.pageOne: (_) => const PageOne(),
    NamedRoute.homePageTwo: (_) => const HomePageTwo(),
    NamedRoute.pageTwo: (context) => _openPage<String>(
          context,
          (text) => PageTwo(text: text),
        ),
    NamedRoute.homePageThree: (_) => const HomePageThree(),
    NamedRoute.pageThree: (context) => _openPage<String>(
          context,
          (text) => PageThree(text: text),
        ),
  };

  static Widget _openPage<T>(BuildContext context, Widget Function(T) onPage) {
    final args = ModalRoute.of(context)!.settings.arguments as T;
    return onPage(args);
  }
}
