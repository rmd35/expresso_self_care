import 'package:expresso_self_care/constants/constants.dart';
import 'package:expresso_self_care/ui/views/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: AnimatedOpacity(
            opacity: 1,
            duration: Duration(seconds: 1),
            child: SvgPicture.asset(
              'assets/logo.svg',
              width: 165.08,
              height: 76.86,
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (model) => model.initialise(),
    );
  }
}
