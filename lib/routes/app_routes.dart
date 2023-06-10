import 'package:flutter/material.dart';

import '/presentation/login_active_state_screen/login_active_state_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String loginActiveStateScreen = '/login_active_state_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: LoginActiveStateScreen.builder,
      };
}
