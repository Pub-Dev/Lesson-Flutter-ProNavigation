import 'package:flutter/widgets.dart';

class NavigationService {
  NavigationService._();
  static final NavigationService instance = NavigationService._();

  late final GlobalKey<NavigatorState> navigation;

  Future navigateTo<T>(String page, T object) async {
    await navigation.currentState?.pushNamed(page, arguments: object);
  }

  BuildContext? getContext() {
    return navigation.currentContext;
  }
}
