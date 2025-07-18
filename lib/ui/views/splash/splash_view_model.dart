import 'package:expresso_self_care/app/locator.dart';
import 'package:expresso_self_care/app/router.dart' as AppRouter;
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future initialise() async {
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      _navigationService.navigateTo(AppRouter.Router.chooseLanguage);
    });
  }
}
