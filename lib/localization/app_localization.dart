import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../core/utils/navigator_service.dart';
import 'ar/ar.dart';
import 'en_us/en_us_translations.dart';

class AppLocalization {
  AppLocalization(this.locale);

  Locale locale = const Locale("ar", "SA");

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': enUs,
    'ar': ar
  };

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  static List<String> languages() => _localizedValues.keys.toList();
  String getString(String text) =>
      _localizedValues[locale.languageCode]![text] ?? text;
  // Method to change the current locale
  void changeLocale(Locale newLocale) {
    locale = newLocale;
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalization.languages().contains(locale.languageCode);

  //Returning a SynchronousFuture here because an async "load" operation
  //cause an async "load" operation
  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(AppLocalization(locale));
  }

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}

extension LocalizationExtension on String {
  String get tr =>
      AppLocalization.of(NavigatorService.navigatorKey.currentContext!)
          .getString(this);
}
