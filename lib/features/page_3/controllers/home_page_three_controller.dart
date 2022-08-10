import 'package:lesson_flutter_pronavigation/core/navigation/navigation_service.dart';
import 'package:lesson_flutter_pronavigation/core/routes/route.dart';

class HomePageThreeController {
  //Poderia ser um Mobx, qualquer coisa aqui
  //Imagine que seja uma camada separada

  void goToPageThree() async {
    await NavigationService.instance
        .navigateTo<String>(NamedRoute.pageThree, 'Comenta ai!!');
  }
}
