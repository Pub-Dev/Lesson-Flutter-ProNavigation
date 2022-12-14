import 'package:flutter/material.dart';
import 'package:lesson_flutter_pronavigation/core/navigation/navigator_middleware.dart';
import 'package:lesson_flutter_pronavigation/core/routes/route.dart';

import 'navigation/navigation_service.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey();

  @override
  void initState() {
    NavigationService.instance.navigation = _navigationKey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteHandler.routes,
      initialRoute: NamedRoute.home,
      navigatorObservers: [
        NavigatorMiddleware(),
      ],
      navigatorKey: _navigationKey,
    );
  }
}



// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/': (_) => const HomePage(),
//         '/homeone': (_) => const HomePageOne(),
//         '/homeone/one': (_) => const PageOne(),
//       },
//       initialRoute: NamedRoute.home,
//     );
//   }
// }

// // class App extends StatelessWidget {
// //   const App({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       routes: {
// //         NamedRoute.home: (_) => const HomePage(),
// //         NamedRoute.homePageOne: (_) => const HomePageOne(),
// //         NamedRoute.pageOne: (_) => const PageOne(),
// //       },
// //       initialRoute: NamedRoute.home,
// //     );
// //   }
// // }