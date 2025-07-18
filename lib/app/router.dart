import 'package:flutter/material.dart';

import '../ui/views/choose_language/choose_language_view.dart';
import '../ui/views/error/error_view.dart';
import '../ui/views/splash/splash_view.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashView());
      case chooseLanguage:
        return MaterialPageRoute(builder: (context) => ChooseLanguageView());
      default:
        return MaterialPageRoute(builder: (context) => ErrorView());
    }
  }

  static const chooseLanguage = 'chooseLanguage';
  static const splashView = '/';
}
