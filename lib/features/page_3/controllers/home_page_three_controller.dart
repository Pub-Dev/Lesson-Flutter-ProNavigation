import 'package:lesson_flutter_pronavigation/core/navigation/navigation_service.dart';
import 'package:lesson_flutter_pronavigation/core/routes/route.dart';

class HomePageThreeController {
  void goToPageThree() async {
    await NavigationService.instance
        .navigateTo<String>(NamedRoute.pageThree, 'Comenta ai!!');
  }
}
